#include <iostream>
#include <cuda_runtime.h>

int check_cuda_is_avialable(void)
{
    int deviceCount;
    cudaGetDeviceCount(&deviceCount);

    if (deviceCount == 0) 
    {
        std::cerr << "No CUDA devices found." << std::endl;
        return 1;
    }
    else
        return 0;
}
