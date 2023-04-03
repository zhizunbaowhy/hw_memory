# -*- coding: utf-8 -*-
"""
@Time       : 2023/4/3 9:50
@Author     : Juxin Niu (juxin.niu@outlook.com)
@FileName   : gui_main.py
@Description: 
"""
import sys
from typing import Any, List, Optional, Tuple

from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtCore import QObject, QRegExp, Qt
from PyQt5.QtGui import QColor, QFont, QSyntaxHighlighter, QTextCharFormat
from PyQt5.QtWebEngineWidgets import QWebEngineView
from PyQt5.QtWidgets import QAction, QApplication, QDesktopWidget, QFileDialog, QHBoxLayout, QLabel, QLineEdit, QMainWindow, QMdiArea, QMdiSubWindow, \
    QStyleFactory, \
    QTextEdit, QVBoxLayout, QWidget


class CCodeHighlighter(QSyntaxHighlighter):
    @staticmethod
    def __c_style():
        keyword_format = QTextCharFormat()
        keyword_format.setForeground(QColor("#7f0055"))
        keyword_format.setFontWeight(QFont.Bold)

        keywords = ["auto", "break", "case", "char", "const", "continue", "default", "do", "double", "else", "enum", "extern",
                    "float", "for", "goto", "if", "int", "long", "register", "return", "short", "signed", "sizeof", "static", "struct",
                    "switch", "typedef", "union", "unsigned", "void", "volatile", "while"]
        keyword_pattern = "\\b(" + "|".join(keywords) + ")\\b"

        comment_format = QTextCharFormat()
        comment_format.setForeground(QColor("#888a85"))
        string_format = QTextCharFormat()
        string_format.setForeground((QColor("#2e8b57")))
        constant_format = QTextCharFormat()
        constant_format.setForeground((QColor("#dc322f")))

        rules = [
            (QRegExp(keyword_pattern), keyword_format),
            (QRegExp(r"//[^\n]*"), comment_format),  # single-line comment
            (QRegExp(r"/\\*[^*]*\\*+(?:[^/*][^*]*\\*+)*/"), comment_format),  # multi-line comment
            (QRegExp("\".*\""), string_format),  # double-quoted string
            (QRegExp("'.{1}'"), string_format),  # single-quoted character
            (QRegExp("[0-9]+"), constant_format)  # numeric constant
        ]

        return rules

    @staticmethod
    def __arm_asm_style():

        keyword_format = QTextCharFormat()
        keyword_format.setForeground(QColor("#8800A0"))
        keyword_format.setFontWeight(QFont.Bold)

        address_format = QTextCharFormat()
        address_format.setFontWeight(QFont.Bold)

        comment_format = QTextCharFormat()
        comment_format.setForeground(QColor("#888a85"))

        rules = [
            (QRegExp(r"[0-9a-f]{16}\s*<.+>:"), keyword_format),  # symbol
            (QRegExp(r"[0-9a-f]{6}:"), address_format),  # instruction address
            (QRegExp(r"//[^\n]*"), comment_format),  # comment
        ]

        return rules

    def __init__(self, parent=None, style='C'):
        super().__init__(parent)
        if style.lower() in {'c', 'c++', 'cpp'}:
            self.rules = self.__c_style()
        elif style.lower() == 'asm':
            self.rules = self.__arm_asm_style()
        else:
            self.rules = []

    def highlightBlock(self, text):
        for pattern, char_format in self.rules:
            match = pattern.indexIn(text)
            while match >= 0:
                length = pattern.matchedLength()
                self.setFormat(match, length, char_format)
                match = pattern.indexIn(text, match + length)


class SubWindow(QMdiSubWindow):
    def __init__(self, parent, **kwargs):
        super().__init__(parent)
        self.setStyle(QStyleFactory.create("Fusion"))
        self.setWindowTitle(kwargs.get("title", "SubWindow"))
        self.resize(*kwargs.get("default_size", (400, 600)))
        self.setMinimumSize(*kwargs.get("minimal_size", (200, 300)))
        self.setWindowFlags(self.windowFlags() & ~QtCore.Qt.WindowCloseButtonHint)

    def closeEvent(self, a0: QtGui.QCloseEvent) -> None:
        a0.ignore()


class OptWebView(QWebEngineView):
    def __init__(self):
        super(OptWebView, self).__init__()
        self.setUrl(QtCore.QUrl("about:blank"))

    def render_local_file(self, f):
        self.setUrl(QtCore.QUrl(f"file:///{f}"))

    def clear(self):
        self.setUrl(QtCore.QUrl("about:blank"))


class TargetCodeWindow(SubWindow):
    def __init__(self, parent, **kwargs):
        super().__init__(parent, **kwargs)

        self.text_edit = QTextEdit()
        self.text_edit.setFont(QFont("Consolas", 12))
        self.text_edit.setReadOnly(True)
        self.highlighter = CCodeHighlighter(self.text_edit, style='c')
        self.setWidget(self.text_edit)

    @QtCore.pyqtSlot(str)
    def set_c_code(self, code: str):
        self.text_edit.setPlainText(code)


class ASMWindow(SubWindow):
    def __init__(self, parent, **kwargs):
        super().__init__(parent, **kwargs)

        self.text_edit = QTextEdit()
        self.text_edit.setFont(QFont("Consolas", 10))
        self.text_edit.setReadOnly(True)
        self.highlighter = CCodeHighlighter(self.text_edit, style='asm')
        self.setWidget(self.text_edit)

    @QtCore.pyqtSlot(str)
    def set_asm_code(self, code: str):
        self.text_edit.setPlainText(code)


class CFGWindow(SubWindow):
    def __init__(self, parent, **kwargs):
        super().__init__(parent, **kwargs)
        self.graph_render = OptWebView()
        self.setWidget(self.graph_render)

    @QtCore.pyqtSlot(str)
    def render_graph(self, file_name):
        self.graph_render.clear()
        self.graph_render.render_local_file(file_name)


class ActionWithMapping(QAction):
    def __init__(self, action_name: str, action_key: Any,
                 parent: Optional[QObject] = None,
                 shortcut: Optional[str] = None,
                 clickable: bool = False, clicked: bool = True):

        super(ActionWithMapping, self).__init__(action_name, parent)
        self.__action_key = action_key
        if shortcut is not None:
            self.setShortcut(shortcut)
        if clickable:
            self.setCheckable(clickable)
            self.setChecked(clicked)

    @property
    def key(self):
        return self.__action_key


def file_filter_gen(flt: List[Tuple[str, List[str]]]):
    return ";;".join([f"{name} (" + " ".join([f"*.{ty}" for ty in ty_lst]) + ")" for name, ty_lst in flt])


def get_open_file(parent: Optional[QWidget], title: str, base_dir: str = "./", file_filter: str = "Any (*.*)") -> Tuple[str, str]:
    file_name, selected_filter = QFileDialog().getOpenFileName(parent, title, directory=base_dir, filter=file_filter)
    return file_name, selected_filter


class LineEditWithLabel:
    def __init__(self, parent, label_name: str, read_only: bool = False, align: Qt.AlignmentFlag = Qt.AlignLeft, place_holder: str = "", text: str = ""):
        self.label = QLabel(label_name, parent)
        self.line_edit = QLineEdit(parent)
        self.line_edit.setReadOnly(read_only)
        self.line_edit.setAlignment(align)
        self.line_edit.setPlaceholderText(place_holder)
        self.line_edit.setText(text)

    def components(self):
        return self.label, self.line_edit


class SecondaryWindow(QWidget):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowModality(Qt.ApplicationModal)

        self.__c, self.__asm, self.__v = "", "", 0

        # Set up the UI
        self.setWindowTitle("Secondary Window")
        self.resize(400, 150)

        self.asm_file_label, self.asm_file_edit = LineEditWithLabel(self, label_name='ASM File').components()
        self.asm_file_btn = QtWidgets.QPushButton("browse...", self)
        self.asm_file_btn.clicked.connect(self.choose_asm_file)

        self.c_file_label, self.c_file_edit = LineEditWithLabel(self, label_name='C File', place_holder="Optional").components()
        self.c_file_btn = QtWidgets.QPushButton("browse...", self)
        self.c_file_btn.clicked.connect(self.choose_c_file)

        self.generate_btn = QtWidgets.QPushButton(" Processing ", self)
        self.cancel_btn = QtWidgets.QPushButton(" Close ", self)
        self.generate_btn.clicked.connect(self.process_files)
        self.cancel_btn.clicked.connect(self.user_cancel)

        layout_btn = QHBoxLayout()
        layout_btn.addWidget(self.generate_btn)
        layout_btn.addWidget(self.cancel_btn)
        layout_btn.addStretch()

        layout_asm = QHBoxLayout()
        layout_asm.addWidget(self.asm_file_edit)
        layout_asm.addWidget(self.asm_file_btn)
        layout_c = QHBoxLayout()
        layout_c.addWidget(self.c_file_edit)
        layout_c.addWidget(self.c_file_btn)

        self.progress_bar = QtWidgets.QProgressBar()
        self.update_progress_bar(self.__v)

        layout = QVBoxLayout()
        layout.addWidget(self.asm_file_label)
        layout.addLayout(layout_asm)
        layout.addWidget(self.c_file_label)
        layout.addLayout(layout_c)
        layout.addStretch()
        layout.addWidget(self.progress_bar)
        layout.addLayout(layout_btn)
        self.setLayout(layout)

    def choose_asm_file(self):
        fp, ok = get_open_file(self, title="Choose ASM file", file_filter=file_filter_gen([("ASM File", ['asm'])]))
        if ok:
            self.asm_file_edit.setText(fp)

    def choose_c_file(self):
        fp, ok = get_open_file(self, title="Choose C file", file_filter=file_filter_gen([("C Code", ['c', 'cpp', 'hpp', 'h'])]))
        if ok:
            self.c_file_edit.setText(fp)

    def process_files(self):
        self.asm_file_edit.setEnabled(False)
        self.c_file_edit.setEnabled(False)
        self.asm_file_btn.setEnabled(False)
        self.c_file_btn.setEnabled(False)
        self.generate_btn.setEnabled(False)
        self.cancel_btn.setEnabled(False)
        try:
            c_fp, asm_fp = self.c_file_edit.text(), self.asm_file_edit.text()
            if asm_fp:
                processing(c_fp, asm_fp, self.update_progress_bar)
        except Exception:
            self.__v = 0
            raise RuntimeError
        else:
            self.__c, self.__asm, self.__v = c_fp, asm_fp, 100
        finally:
            self.asm_file_edit.setEnabled(True)
            self.c_file_edit.setEnabled(True)
            self.asm_file_btn.setEnabled(True)
            self.c_file_btn.setEnabled(True)
            self.generate_btn.setEnabled(True)
            self.cancel_btn.setEnabled(True)

    def user_cancel(self):
        self.c_file_edit.setText(self.__c)
        self.asm_file_edit.setText(self.__asm)
        self.progress_bar.setValue(self.__v)
        self.close()

    def update_progress_bar(self, progress):
        self.progress_bar.setValue(progress)


def processing(file1, file2, callback):
    # Example processing function
    for i in range(10):
        progress = (i + 1) * 10
        callback(progress)
        QtCore.QThread.msleep(500)


class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setMinimumSize(QtCore.QSize(400, 400))
        self.setWindowTitle("Main Window")
        self.frameGeometry().moveCenter(QDesktopWidget().availableGeometry().center())

        # Create MDI area
        self.mdi = QMdiArea()
        self.setCentralWidget(self.mdi)

        # Create sub-windows
        self.target_code_sub = TargetCodeWindow(self, title='Target code')
        self.asm_file_sub = ASMWindow(self, title='ASM file')
        self.cfg_sub = CFGWindow(self, title='Control flow graph')
        self.result_sub = SubWindow(self, title='Result')
        # Create secondary window
        self.choose_file_sec = SecondaryWindow()

        # Add sub-windows to MDI area
        self.mdi.addSubWindow(self.target_code_sub)
        self.mdi.addSubWindow(self.asm_file_sub)
        self.mdi.addSubWindow(self.cfg_sub)
        self.mdi.addSubWindow(self.result_sub)

        # Visible actions
        self.target_code_action = ActionWithMapping("Target Code", "target_code", parent=self, clickable=True)
        self.asm_file_action = ActionWithMapping("ASM file", "asm_file", parent=self, clickable=True)
        self.cfg_action = ActionWithMapping("Control flow graph", "cfg", parent=self, clickable=True)
        self.result_action = ActionWithMapping("Analysis Result", "result", parent=self, clickable=True)

        # Call secondary window to choose file for analysis.
        self.choose_file_action = ActionWithMapping("Choose File", 'choose_file', parent=self)

        # Menubar
        menubar = self.menuBar()
        self.menubar_start = (bar := menubar.addMenu("Start"))
        bar.addActions([self.choose_file_action])
        bar.triggered[ActionWithMapping].connect(lambda: self.choose_file_sec.show())
        self.menubar_visible = (bar := menubar.addMenu("Visible"))
        bar.addActions([self.target_code_action, self.asm_file_action, self.cfg_action, self.result_action])
        bar.triggered[ActionWithMapping].connect(lambda: self.target_code_sub.setVisible(self.target_code_action.isChecked()))
        bar.triggered[ActionWithMapping].connect(lambda: self.asm_file_sub.setVisible(self.asm_file_action.isChecked()))
        bar.triggered[ActionWithMapping].connect(lambda: self.cfg_sub.setVisible(self.cfg_action.isChecked()))
        bar.triggered[ActionWithMapping].connect(lambda: self.result_sub.setVisible(self.result_action.isChecked()))

    def closeEvent(self, event):
        # TODO.
        event.accept()


if __name__ == '__main__':
    app = QApplication(sys.argv)
    main_window = MainWindow()
    main_window.show()
    sys.exit(app.exec_())
