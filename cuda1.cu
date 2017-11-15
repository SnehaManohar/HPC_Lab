#include <stdio.h>
#define NUM_BLOCKS 32
#define BLOCK_WIDTH 3
__global__ void hello()
{
printf("Hello world! I'm a thread in block %d\n", blockIdx.x);
//printf("Hello world! I'm thread %d\n", threadIdx.x);
}int main(int argc,char **argv)
{
// launch the kernel
hello<<<NUM_BLOCKS, BLOCK_WIDTH>>>();
// force the printf()s to flush
cudaDeviceSynchronize();
printf("That's all!\n");
return 0;
}