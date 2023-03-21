cmake_minimum_required(VERSION 3.5)

project(cuda-example LANGUAGES CXX CUDA)

add_executable(cuda-example main.cu)

set_property(TARGET cuda-example PROPERTY CUDA_ARCHITECTURES 72)

target_compile_features(cuda-example PUBLIC cxx_std_11)

target_link_libraries(cuda-example PRIVATE cuda)

set(CUDA_NVCC_FLAGS "${CUDA_NVCC_FLAGS} -G -g")