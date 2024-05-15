using Benchmark;
using BenchmarkDotNet.Running;

Console.WriteLine("Multiplying matrices.");
    var summary = BenchmarkRunner.Run<MatrixBenchmarks>();

Console.WriteLine("Finished execution with C#.");