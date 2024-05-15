	#include <iostream>
#include <sys/time.h>
#include <chrono>

#define N 1024 // 2^10

using namespace std::chrono;

    double m1[N][N];
    double m2[N][N];
    double rM[N][N]; // matrix to write the result to.
int main() {

    // loop over rows and columns and populate
    // with random doubles.
    // Result matrix (rM) values are initially set to 0.
    std::cout << "Populating matrices with random data." << std::endl;
    for(int i = 0; i < N; ++i){
        for(int j = 0; j < N; ++j){
            m1[i][j] = (double)rand() / (double)RAND_MAX;
            m2[i][j] = (double)rand() / (double)RAND_MAX;
            rM[i][j] = 0;
        }
    }

    auto start = high_resolution_clock::now(); // start benchmark

    std::cout << "Multiplying matrices." << std::endl;

    for(int i = 0; i < N; ++i){
        for(int j = 0; j < N; ++j){
            for(int k = 0; k < N; ++k){
                rM[i][j] += m1[i][k] * m2[k][j];
            }
        }
    }

    auto stop = high_resolution_clock::now(); // stop benchmark

    auto duration  = duration_cast<milliseconds>(stop - start);


    // print the execution time.
    std::cout << "Finished executing with C++." << std::endl;
    std::cout << "Total execution time: ";
    std::cout << duration.count();
    std::cout << " milliseconds." "\n";

    return 0;
}
