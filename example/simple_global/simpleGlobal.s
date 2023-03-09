	.arch armv8-a
	.file	"simpleGlobal.c"
	.text
	.comm	global_i,4,4
	.global	global_j
	.bss
	.align	2
	.type	global_j, %object
	.size	global_j, 4
global_j:
	.zero	4
	.global	global_k
	.data
	.align	2
	.type	global_k, %object
	.size	global_k, 4
global_k:
	.word	1
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	x1, [sp]
	str	wzr, [sp, 24]
	mov	w0, 3
	str	w0, [sp, 28]
	mov	w0, 0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.data
	.align	2
	.type	sta_local_k.3867, %object
	.size	sta_local_k.3867, 4
sta_local_k.3867:
	.word	2
	.local	sta_local_j.3866
	.comm	sta_local_j.3866,4,4
	.local	sta_local_i.3865
	.comm	sta_local_i.3865,4,4
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
