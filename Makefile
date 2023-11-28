all: Cuda_task

Cuda_task: main.o cuda_device_checker.o device_information.o
	nvcc main.o cuda_device_checker.o device_information.o -o Cuda_task

main.o: main.cpp
	g++ -c main.cpp

cuda_device_checker.o: cuda_device_checker.cu
	nvcc -c cuda_device_checker.cu

device_information.o: device_information.cu
	nvcc -c device_information.cu

clean:
	rm -rf *.o Cuda_task
