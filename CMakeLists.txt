project(sp_lab4)
cmake_minimum_required(VERSION 3.21)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/result)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/result)
set(CMAKE_GENERATOR "Ninja")

add_library(sp_lib SHARED calculator.cpp)
add_executable(sp main.cpp)
target_link_libraries(sp sp_lib)
