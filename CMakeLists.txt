cmake_minimum_required(VERSION 2.8)
project(UAVControl)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -std=c++11 -pthread -g -O0")

# just include header
include_directories(include/osdk-core/api/inc)
include_directories(include/osdk-core/utility/inc)
include_directories(include/osdk-core/hal/inc)
include_directories(include/osdk-core/protocol/inc)
include_directories(include/osdk-core/platform/linux/inc)
include_directories(include/osdk-core/platform/manifold/inc)
include_directories(./common)
include_directories(include)

if((CMAKE_SYSTEM_PROCESSOR MATCHES "x86_64|AMD64") AND (CMAKE_SIZEOF_VOID_P EQUAL 8))
    set(TARGET_ARCH "x86_64")
elseif((CMAKE_SYSTEM_PROCESSOR MATCHES "i386|i686|x86|AMD64") AND (CMAKE_SIZEOF_VOID_P EQUAL 4))
    set(TARGET_ARCH "x86")
elseif((CMAKE_SYSTEM_PROCESSOR MATCHES "^arm*") OR (CMAKE_SYSTEM_PROCESSOR MATCHES "^aarch*"))
    set(TARGET_ARCH "arm")
    if(CMAKE_SIZEOF_VOID_P EQUAL 4)
        set(PROC_VERSION "v7")
    elseif(CMAKE_SIZEOF_VOID_P EQUAL 8)
        set(PROC_VERSION "v8")
    endif()
endif()


if (TARGET_ARCH MATCHES "x86_64")
    set(LIB_PATH "x86-64linux")
elseif(TARGET_ARCH MATCHES "arm")
    if (PROC_VERSION MATCHES "v7")
        set(LIB_PATH "arm-v7linux")
    elseif(PROC_VERSION MATCHES "v8")
        set(LIB_PATH "arm-v8linux")
    endif ()
endif ()

FILE(GLOB SOURCE_FILES *.hpp
        main.cpp
        common/dji_linux_environment.cpp
        common/dji_linux_helpers.cpp
        )

add_executable(UAVControl main.cpp
        common/dji_linux_environment.cpp
        common/dji_linux_helpers.cpp
        uav_error_code/UAVErrorCode.cpp
        uav_error_code/UAVErrorCode.h
        SingleInstanceGetter.cpp
        SingleInstanceGetter.h
        flight_control/flight_control.cpp
        flight_control/flight_control.h
        process_data_connect/UDPServer.h
        process_data_connect/UDPServer.cpp
        task_queue/TaskQueue.cpp
        task_queue/TaskQueue.h
        task_queue/Task.cpp
        task_queue/Task.h
        )

target_link_libraries(UAVControl
        ${CMAKE_SOURCE_DIR}/libs/${LIB_PATH}/libdjiosdk-core.a
        )