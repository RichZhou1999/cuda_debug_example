#include <iostream>

__global__ void add(int *a, int *b, int *c) {
    int i = threadIdx.x;
    c[i] = a[i] + b[i];
}

int main() {
    int N = 10;
    int a[N], b[N], c[N];

    for (int i = 0; i < N; ++i) {
        a[i] = i;
        b[i] = i * i;
    }

    int *d_a, *d_b, *d_c;
    cudaMalloc(&d_a, N * sizeof(int));
    cudaMalloc(&d_b, N * sizeof(int));
    cudaMalloc(&d_c, N * sizeof(int));

    cudaMemcpy(d_a, a, N * sizeof(int), cudaMemcpyHostToDevice);
    cudaMemcpy(d_b, b, N * sizeof(int), cudaMemcpyHostToDevice);

    add<<<1,N>>>(d_a, d_b, d_c);

    cudaMemcpy(c, d_c, N * sizeof(int), cudaMemcpyDeviceToHost);

    for (int i = 0; i < N; ++i) {
        std::cout << a[i] << " + " << b[i] << " = " << c[i] << std::endl;
    }

    cudaFree(d_a);
    cudaFree(d_b);
    cudaFree(d_c);

    return 0;
}