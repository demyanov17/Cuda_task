#include "functions.h"


int main(int argc, char **argv) {
    
    if (!check_cuda_is_avialable())
        print_device_properties_information();
    return 0;
}
