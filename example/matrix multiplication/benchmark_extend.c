
#define UPPSALAWCET 1


#ifndef UPPSALAWCET
#include <sys/types.h>
#include <sys/times.h>
#endif

/*
 * MATRIX MULTIPLICATION BENCHMARK PROGRAM:
 * 这个程序将两个方阵相乘，得到第三个方阵矩阵
 * 它测试编译器处理多维数组和简单算术的速度
 */

#define UPPERLIMIT 24

//24*24的矩阵
typedef int matrix[UPPERLIMIT][UPPERLIMIT];

int Seed;
matrix A, B, RA;

int main(void)
{
    //InitSeed();
    Seed = 0;
    //Test(ArrayA, ArrayB, ResultArray);
    {

        //Initialize(A);
        {

            int OuterIndex, InnerIndex;

            for (OuterIndex = 0; OuterIndex < UPPERLIMIT; OuterIndex++)
                for (InnerIndex = 0; InnerIndex < UPPERLIMIT; InnerIndex++)
                    A[OuterIndex][InnerIndex] = 1;
        }
        //Initialize(B);
        {

            matrix          Array;
            int             OuterIndex, InnerIndex;

            for (OuterIndex = 0; OuterIndex < UPPERLIMIT; OuterIndex++)
                for (InnerIndex = 0; InnerIndex < UPPERLIMIT; InnerIndex++) {
                    RA[OuterIndex][InnerIndex] = 0;
                    B[OuterIndex][InnerIndex] = 1;
                }
        }

        //Multiply(A, B, Res);
        {
            register int    Outer, Inner, Index;

            for (Outer = 0; Outer < UPPERLIMIT; Outer++)
                for (Inner = 0; Inner < UPPERLIMIT; Inner++) {
                    for (Index = 0; Index < UPPERLIMIT; Index++)
                        RA[Outer][Inner] += A[Outer][Index] * B[Index][Inner];
                }
        }

    }
    return 0;
}
