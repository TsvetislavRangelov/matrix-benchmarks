#include <stdio.h>
#include <time.h>
#include <stdlib.h>

#define N 1024 // 2^10
#define SCALAR 25

    double m1[N][N];
    double rM[N][N];

int main() {

    // loop over rows and columns and populate
    // with random doubles.
    // Result matrix (rM) values are initially set to 0.
    printf("Filling matrix with random values. \n");
    for(int i = 0; i < N; ++i){
        for(int j = 0; j < N; ++j){
            m1[i][j] = (double)rand();
            rM[i][j] = 0;
        }
    }
    clock_t t;
    t = clock();

    // multiply.
    printf("Multiplying matrices. \n");
    for(int i = 0; i < N; ++i){
        for(int k = 0; k < N; ++k){
                rM[i][k] += SCALAR * m1[i][k];
            }
        }
    t = clock() - t;
    double time_taken = ((double)t) / CLOCKS_PER_SEC;

    printf("Finished execution with C. \n");

    printf("Multiplication took %f seconds to execute. \n", time_taken);


    return 0;
}
