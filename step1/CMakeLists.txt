cmake_minimum_required(VERSION 3.15.0)
project(step1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_library(utils utils.cpp)
add_executable(tbd.exe main.cpp)
target_link_libraries(tbd.exe utils)
