#include <cstdio>
#include "utils.hpp"

__global__ void hf0_kernel()
{
    printf("hello step3, from hf0_kernel\n");
}


void hf0()
{
    hf0_kernel<<<1, 2>>>();
    cudaDeviceSynchronize();
}
