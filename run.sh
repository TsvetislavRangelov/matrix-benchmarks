#!/usr/bin/env bash
cd C/ ;gcc -o multiply-benchmark-c multiply.c; gcc -o multiply-benchmark-optimized-c multiply-optimized.c; gcc -o transpose transpose.c; gcc -o scalar scalar.c
echo "BENCHMARK [" `date +%H:%M:%S` "] ****Running C Benchmark (Matrix Mulitply - Naive)****"
./multiply-benchmark-c
echo "BENCHMARK [" `date +%H:%M:%S` "] ****Running C Benchmark (Matrix Mulitply - Optimized)****"
./multiply-benchmark-optimized-c
echo "BENCHMARK [" `date +%H:%M:%S` "] ****Running C Benchmark (Multiply Scalar)****"
./scalar
echo "BENCHMARK [" `date +%H:%M:%S` "] ****Running C Benchmark (Transpose)****"
./transpose

cd .. ; echo "----------------------" ; cd C++/
g++ -o multiply-benchmark-cpp multiply.cpp ; g++ -o multiply-benchmark-optimized-cpp multiply-optimized.cpp; g++ -o transpose-cpp transpose.cpp; g++ -o scalar-cpp scalar.cpp
echo "BENCHMARK [" `date +%H:%M:%S` "] ****Running C++ Benchmark (Matrix Mulitply - Naive)****"
./multiply-benchmark-cpp
echo "BENCHMARK [" `date +%H:%M:%S` "] ****Running C++ Benchmark (Matrix Mulitply - Optimized)****"
./multiply-benchmark-optimized-cpp
echo "BENCHMARK [" `date +%H:%M:%S` "] ****Running C++ Benchmark (Multiply Scalar)****"
./scalar-cpp
echo "BENCHMARK [" `date +%H:%M:%S` "] ****Running C++ Benchmark (Transpose)****"
./transpose-cpp
cd .. ; echo "----------------------"; cd C#/; cd Benchmark/Benchmark/
dotnet run -c Release
