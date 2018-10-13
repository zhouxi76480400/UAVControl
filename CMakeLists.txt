cmake_minimum_required(VERSION 2.8)
project(UAVControl)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -std=c++11 -pthread -g -O0")

include_directories(./osdk-core/api/inc)
include_directories(./osdk-core/api/src)
include_directories(./osdk-core/utility/inc)
include_directories(./osdk-core/utility/src)
include_directories(./osdk-core/hal/inc)
include_directories(./osdk-core/hal/src)
include_directories(./osdk-core/protocol/inc)
include_directories(./osdk-core/protocol/src)
include_directories(./osdk-core/platform/linux/inc)
include_directories(./osdk-core/platform/linux/src)
include_directories(./common)

FILE(GLOB SOURCE_FILES *.hpp main.cpp
        common/dji_linux_environment.cpp
        common/dji_linux_helpers.cpp
        )

add_executable(UAVControl main.cpp
        common/dji_linux_environment.cpp
        common/dji_linux_helpers.cpp
        uav_error_code/UAVErrorCode.cpp
        uav_error_code/UAVErrorCode.h
        SingleInstanceGetter.cpp
        SingleInstanceGetter.h)
target_link_libraries(${PROJECT_NAME} djiosdk-core)