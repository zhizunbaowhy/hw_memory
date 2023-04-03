#include <math.h>
#include <stdlib.h>
#include <stdio.h>

#define SIZE   (2)
#define SIZE_X (2)
#define SIZE_Y (2)
#define SIZE_Z (2)

typedef double mesh[SIZE_X*SIZE_Y*SIZE_Z];
typedef mesh* meshptr;

void SET_FLAG(mesh, int, int, int);
void initializerandommesh(mesh);

mesh ms;

int main(int argc, const char * argv[])
{
    
    ms[0] = 1;
    ms[1] = 0;
    //temp = 0+1.0*(rand()%RAND_MAX)/RAND_MAX *(64-0);
    
    initializerandommesh(ms);
    printf("The var is %.5f\n",ms[130000]);
    
    
    return 0;
}


void initializerandommesh(mesh ms)
{
    int x,  y,  z;

    for( z = 0; z < SIZE_Z; z++ )
    {
        for( y = 0; y < SIZE_Y; y++ )
        {
            for( x = 0; x < SIZE_X; x++ )
            {
                
                    SET_FLAG( ms, x, y, z);
            }
        }
    }
}


void swapMesh( meshptr* mesh1, meshptr* mesh2 )
{
    meshptr aux = *mesh1;
    *mesh1 = *mesh2;
    *mesh2 = aux;
}


void SET_FLAG(mesh msp, int x, int y, int z)
{
    int temp = SIZE_X*SIZE_Y*z +SIZE_Y*x+SIZE_Y;
    msp[temp] = x+y+z;
}

