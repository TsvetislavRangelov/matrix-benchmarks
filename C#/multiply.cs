using System.Diagnostics;

const int N = 1024; // 2^10

double[,] m1 = new double[N, N];
double[,] m2 = new double[N, N];
double[,] mR = new double[N, N];
var random = new Random();

Console.WriteLine("Filling matrices with random values.");
for(int i = 0; i < N; i++){
    for(int j = 0; j < N; j++){
        m1[i, j] = Math.Round(random.NextDouble(), 2);
        m2[i, j] = Math.Round(random.NextDouble(), 2);
    }
}

Stopwatch sw = new Stopwatch();
sw.Start();

Console.WriteLine("Multiplying matrices.");
for(int i = 0; i < N; i++){
    for(int j = 0; j < N; j++){
        for(int k = 0; k < N; k++){
            mR[i, j] += m1[i, k] * m2[k, j];
        }
    }
}

sw.Stop();
Console.WriteLine("Finished execution with C#.");

Console.WriteLine("Multiplication took {0} seconds to execute.", sw.Elapsed.TotalSeconds);








