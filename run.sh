#!/usr/bin/env bash
CURRENT_TIME=`date +%H:%M:%S`
cd C/ ;gcc -o multiply-benchmark-c multiply.c ; gcc -o multiply-benchmark-optimized-c multiply-optimized.c
echo "BENCHMARK [" `date +%H:%M:%S` "] ****Running C Benchmark (Matrix Mulitply - Naive)****"
./multiply-benchmark-c
echo "BENCHMARK [" `date +%H:%M:%S` "] ****Running C Benchmark (Matrix Mulitply - Optimized)****"
./multiply-benchmark-optimized-c
cd .. ; echo "----------------------" ; cd C++/
g++ -o multiply-benchmark-cpp multiply.cpp ; g++ -o multiply-benchmark-optimized-cpp multiply-optimized.cpp
echo "BENCHMARK [" `date +%H:%M:%S` "] ****Running C++ Benchmark (Matrix Mulitply - Naive)****"
./multiply-benchmark-cpp
echo "BENCHMARK [" `date +%H:%M:%S` "] ****Running C++ Benchmark (Matrix Mulitply - Optimized)****"
./multiply-benchmark-optimized-cpp
cd .. ; echo "----------------------"; cd C#/
echo "BENCHMARK [" `date +%H:%M:%S` "] ****Running C# Benchmark (Matrix Multiply - Naive)****"
dotnet-script multiply.cs
echo "BENCHMARK [" `date +%H:%M:%S` "] ****Running C# Benchmark (Matrix Multiply - Optimized)****"
dotnet-script multiply-optimized.cs
echo "----------------------" 
