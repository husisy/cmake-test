cmake_minimum_required(VERSION 3.15.0)
project(step0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(tbd.exe main.cpp utils.cpp)
