//
//  main.c
//  hw_benchmark
//
//  Created by GuGuJiXiao on 3/30/23.
//

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

long matrix_1[row][col];
long matrix_2[row][col];
double matrix_3[row][col];
long matrix_4[row][col];

int array[length];
long long results;


int main(int argc, const char * argv[]) {
    
    //矩阵乘法
    initializematrix_int();
    initializematrix_float();
    matrix_dot();
    
    //原地插入排序
    //init_array();
    //fbnc();
    //insert_sort_print();
    //insert_sort();
    //insert_sort_print();
    
    //fbnc();
    
    return 0;
}

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
