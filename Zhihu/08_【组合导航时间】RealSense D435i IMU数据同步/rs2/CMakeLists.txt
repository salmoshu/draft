cmake_minimum_required(VERSION 3.10)
project(imusync)

set(CMAKE_CXX_STANDARD 14)

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
        src/imusync.cpp)

include_directories(${PROJECT_SOURCE_DIR}/src)
add_executable(${PROJECT_NAME} ${SOURCE})

# 寻找安装后的功能包
find_package(realsense2 REQUIRED)
target_link_libraries(${PROJECT_NAME} ${realsense2_LIBRARY})


# Eigen3
include_directories(ThirdParty/eigen-3.3.9)


