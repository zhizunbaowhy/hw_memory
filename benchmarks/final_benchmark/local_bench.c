/*
MIT License

Copyright (c) 2023  School of Cyber Science and Technology, Shandong University,

File name: local_bench.c
Abstract: benchmark of static analysis tools for Huawei_Memory_Project
Version: 1.0

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

#include <stdio.h>
#include <stdlib.h>

#define row 100
#define col 100
#define length 10000
#define MOD 100007

void initializematrix_int(void);
void initializematrix_float(void);
void matrix_dot(void);

void fbnc(void);

void insert_sort(void);
void init_array(void);
void insert_sort_print(void);

void fun1(void);
void fun1_2(void);
void fun2(void);
void fun3(void);





long matrix_1[row][col];
long matrix_2[row][col];
double matrix_3[row][col];
long matrix_4[row][col];

int array[length];
long long results;



void init_array(void)
{
    for(int i =0; length > i; i++)
    {
        array[i] = rand();
    }
}

void insert_sort(void)
{
    int i,j,k;
    for(i = 1; length > i; i++)
    {
        k = array[i];
        j = i - 1;
        while((j>=0) && (array[j]>k))
        {
            array[j+1] = array[j];
            j--;
        }
        array[j+1] = k;
        
    }
    
}

void insert_sort_print(void)
{
    for(int i = 0; length > i; i++)
    {
        printf("%d\n",array[i]);
        
    }
    
}


void fbnc(void)
{
    array[0] =array[1] = 1;
    for (int i = 2; i <= length; i ++ )
       {
           array[i] = array[i - 1] + array[i - 2];
           array[i] %= MOD;
       }
}


void initializematrix_int(void)
{
    
    for(int i =0; row > i; i++)
        for(int j = 0; col > j; j++)
        {
            matrix_1[i][j] = rand();
            matrix_2[i][j] = rand();
            matrix_4[i][j] = 0;
            
            matrix_1[i][j] = rand();
            matrix_2[i][j] = rand();
            matrix_4[i][j] = 0;
            
            matrix_1[i][j] = rand();
            matrix_2[i][j] = rand();
            matrix_4[i][j] = 0;
        }
}

void initializematrix_float(void)
{
    for(int i =0; row > i; i++)
        for(int j = 0; col > j; j++)
        {
            matrix_3[i][j] = 0+1.0*(rand()%RAND_MAX)/RAND_MAX *(1-0);
        }
}

void matrix_dot(void)
{
    for (int i = 0; i < row; i++)
        {
            for (int j = 0; j < row; j++)
            {
                for (int k = 0; k < col; k++)
                    matrix_4[i][j] += matrix_1[i][k] * matrix_2[k][j];
            }
        }
}

void fun1(void) {
    initializematrix_int();
    initializematrix_float();
    matrix_dot();
}
void fun1_2(void) {
    matrix_dot();
}

void fun2(void) {
    init_array();
    insert_sort();
}

void fun3(void) {
    fbnc();
}


int main(int argc, const char* argv[]) {

    fun1();
    fun1_2();
    fun2();
    fun3();
    fun1();
    fun1_2();
    fun2();
    fun3();
    if (array[0]>5) {
        fun2();
    }
    else {
        fun3();
    }

    return 0;
}