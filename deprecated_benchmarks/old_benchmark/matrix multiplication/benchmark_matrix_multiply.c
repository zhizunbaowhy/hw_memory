
/*
 * MATRIX MULTIPLICATION BENCHMARK PROGRAM:
 * 传统矩阵乘
 * 它测试编译器处理多维数组和简单算术的速度
 */

// 进行多次矩阵乘 A*B=RA, C*D=RC, RA*RC=R
#define ROWS 30
#define COLS 30
#define COLS2 30

// typedef int matrix[ROWS][COLS];
// 我需要多次对这个全局变量进行读写 读：获取其ROWS和COLS；写：初始化此矩阵
int matrix[ROWS][COLS];
int matrix2[COLS][COLS2];
int result[ROWS][COLS2];

int main(void)
{
    int i, j, k = 0;
    //初始化矩阵 为了不调用库函数不能使用random等 最笨的初始化方法，不管矩阵元素的值是多少
    for(i = 0; i<ROWS; i++){
        for(j = 0; j<COLS; j++){
            matrix[i][j] = k++;
        }
    }

    for(i = 0; i<COLS; i++){
        for(j = 0; j<COLS2; j++){
            matrix2[i][j] = k++;
        }
    }

    matrix_multiply(matrix, matrix2, result);
    
    return 0;
}

void matrix_multiply(matrix, matrix2, result){
    for(i = 0; i<ROWS; i++){
        for(j = 0; j<COLS2; j++){
            result[i][j] = 0;
            for(k = 0; k<COLS; k++){
                result[i][j] += matrix[i][k] * matrix2[k][j];
            }
        }
    }
}
