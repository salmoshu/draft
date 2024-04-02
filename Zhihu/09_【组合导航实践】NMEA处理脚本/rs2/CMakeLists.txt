cmake_minimum_required(VERSION 3.10)
# project(imusync)
project(nmea2table)

set(CMAKE_CXX_STANDARD 11)

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "MSVC")
    add_definitions( -D_USE_MATH_DEFINES=True)
    add_compile_options("$<$<C_COMPILER_ID:MSVC>:/utf-8>")
    add_compile_options("$<$<CXX_COMPILER_ID:MSVC>:/utf-8>")
else()
    set(CMAKE_CXX_FLAGS "-Wno-unused-result")
endif()

file(GLOB_RECURSE SOURCE
        src/minmea/minmea.cpp
        src/rtklib/rtkcmn.cpp
        src/nmea2table.cpp)

include_directories(${PROJECT_SOURCE_DIR}/src)
add_executable(${PROJECT_NAME} ${SOURCE})

# realsense2
find_package(realsense2 REQUIRED)
target_link_libraries(${PROJECT_NAME} ${realsense2_LIBRARY})

# Eigen3
include_directories(ThirdParty/eigen-3.3.9)

# yaml-cpp-0.7.0
add_subdirectory(ThirdParty/yaml-cpp-0.7.0)
target_link_libraries(${PROJECT_NAME} yaml-cpp)