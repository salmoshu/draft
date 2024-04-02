cmake_minimum_required(VERSION 3.3)
project(minmea)

set(minmea_SRCS minmea.c minmea.h)
add_library(minmea ${minmea_SRCS})

add_executable(example example.c)
target_link_libraries(example minmea)