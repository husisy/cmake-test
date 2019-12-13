cmake_minimum_required(VERSION 3.15.0)
project(step0 LANGUAGES CUDA CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_CUDA_STANDARD 11)
set(CMAKE_CUDA_STANDARD_REQUIRED True)
set(CMAKE_CUDA_SEPARABLE_COMPILATION ON)

add_library(utils utils.cu)
add_executable(tbd.exe main.cpp)
target_link_libraries(tbd.exe utils)
