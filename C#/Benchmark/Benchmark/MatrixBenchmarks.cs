using BenchmarkDotNet.Attributes;

namespace Benchmark;

public class MatrixBenchmarks
{
    private const int N = 1024;
    
    private double[,] m1 = new double[N, N];
    private double[,] m2 = new double[N, N];
    private double[,] mR = new double[N, N];
    private const int Scalar = 25;
    
    public MatrixBenchmarks()
    {
        var random = new Random();
        for(int i = 0; i < N; i++){
            for(int j = 0; j < N; j++){
                m1[i, j] = Math.Round(random.NextDouble(), 2);
                m2[i, j] = Math.Round(random.NextDouble(), 2);
            }
        }
    }
    
    [Benchmark]
    public void Multiply()
    {
        for(int i = 0; i < N; i++){
            for(int j = 0; j < N; j++){
                for(int k = 0; k < N; k++){
                    mR[i, j] += m1[i, k] * m2[k, j];
                }
            }
        }
    }
    
    [Benchmark]
    public void MultiplyOptimized()
    {
        for(int i = 0; i < N; i++){
            for(int k = 0; k < N; k++){
                for(int j = 0; j < N; j++){
                    mR[i, j] += m1[i, k] * m2[k, j];
                }
            }
        }
    }

    [Benchmark]
    public void Transpose()
    {
        for (int i = 0; i < N; i++)
        {
            for (int j = 0; j < N; j++)
            {
                mR[i, j] = m1[j, i];
            }
        }
        
    }

    [Benchmark]
    public void MultiplyScalar()
    {
        for (int i = 0; i < N; i++)
        {
            for (int j = 0; j < N; j++)
            {
                mR[i, j] += Scalar * m1[i, j];
            }
        }        
    }
}