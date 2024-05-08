#include <iostream>
#include <sys/time.h>
#include <chrono>

#define N 1024 // 2^10

using namespace std::chrono;
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
    std::cout << "Populating matrices with random data." << std::endl;
    for(int i = 0; i < N; ++i){
        for(int j = 0; j < N; ++j){
            m1[i][j] = (double)rand() / (double)RAND_MAX;
        }
    }
    auto start = high_resolution_clock::now(); // start benchmark

    transpose(m1, m2);

    auto stop = high_resolution_clock::now();

    auto duration = duration_cast<milliseconds>(stop - start);

    std::cout << "Finished executing with C++." << std::endl;
    std::cout << "Total execution time: ";
    std::cout << duration.count();
    std::cout << " milliseconds." "\n";

    exit(0);
}