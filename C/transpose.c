#include <stdio.h>
#include <time.h> 
#include <stdlib.h>

#define N 1024 // 2^10

double m1[N][N];
double m2[N][N];


void transpose(double A[N][N], double B[N][N]){
    for(int i = 0; i < N; i++){
        for(int j = 0; j < N; j++){
            B[i][j] = A[j][i];
        }
    }
}

int main() {
    printf("Populating matrices with random data.");
    for(int i = 0; i < N; ++i){
        for(int j = 0; j < N; ++j){
            m1[i][j] = (double)rand() / (double)RAND_MAX;
        }
    }
    clock_t t; 
    t = clock(); 

    transpose(m1, m2);

    t = clock() - t;
    double time_taken = ((double)t) / CLOCKS_PER_SEC;

    printf("Finished execution with C. \n");

    printf("Multiplication took %f seconds to execute. \n", time_taken); 

    return 0;
}