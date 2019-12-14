cmake_minimum_required(VERSION 3.15.0)
project(step0 LANGUAGES CUDA CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_CUDA_STANDARD 11)
set(CMAKE_CUDA_STANDARD_REQUIRED True)
set(CMAKE_CUDA_SEPARABLE_COMPILATION ON)

find_package(CUDA REQUIRED)

add_library(utils STATIC IMPORTED)
set_target_properties(utils PROPERTIES IMPORTED_LOCATION "${PROJECT_SOURCE_DIR}/libutils.a")

add_executable(tbd.exe main.cpp)
target_link_libraries(tbd.exe utils)
target_link_libraries(tbd.exe ${CUDA_LIBRARIES})
