# Install script for directory: /home/zhouxi/uav_project/Onboard-SDK/osdk-core

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/cmake/djiosdk/DJIOSDKConfig.cmake;/usr/local/lib/cmake/djiosdk/DJIOSDKConfigVersion.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib/cmake/djiosdk" TYPE FILE FILES
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/cmake-modules/DJIOSDKConfig.cmake"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/cmake-modules/DJIOSDKConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xshlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/libdjiosdk-core.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib" TYPE STATIC_LIBRARY FILES "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/cmake-build-debug/libdjiosdk-core.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/djiosdk/dji_ack.hpp;/usr/local/include/djiosdk/dji_broadcast.hpp;/usr/local/include/djiosdk/dji_camera.hpp;/usr/local/include/djiosdk/dji_command.hpp;/usr/local/include/djiosdk/dji_control.hpp;/usr/local/include/djiosdk/dji_error.hpp;/usr/local/include/djiosdk/dji_gimbal.hpp;/usr/local/include/djiosdk/dji_hardware_sync.hpp;/usr/local/include/djiosdk/dji_hotpoint.hpp;/usr/local/include/djiosdk/dji_mfio.hpp;/usr/local/include/djiosdk/dji_mission_base.hpp;/usr/local/include/djiosdk/dji_mission_manager.hpp;/usr/local/include/djiosdk/dji_mission_type.hpp;/usr/local/include/djiosdk/dji_mobile_communication.hpp;/usr/local/include/djiosdk/dji_mobile_device.hpp;/usr/local/include/djiosdk/dji_status.hpp;/usr/local/include/djiosdk/dji_subscription.hpp;/usr/local/include/djiosdk/dji_telemetry.hpp;/usr/local/include/djiosdk/dji_telemetry_doc.hpp;/usr/local/include/djiosdk/dji_type.hpp;/usr/local/include/djiosdk/dji_vehicle.hpp;/usr/local/include/djiosdk/dji_vehicle_callback.hpp;/usr/local/include/djiosdk/dji_version.hpp;/usr/local/include/djiosdk/dji_virtual_rc.hpp;/usr/local/include/djiosdk/dji_waypoint.hpp;/usr/local/include/djiosdk/dji_hard_driver.hpp;/usr/local/include/djiosdk/dji_log.hpp;/usr/local/include/djiosdk/dji_memory.hpp;/usr/local/include/djiosdk/dji_platform_manager.hpp;/usr/local/include/djiosdk/dji_thread_manager.hpp;/usr/local/include/djiosdk/linux_serial_device.hpp;/usr/local/include/djiosdk/posix_thread.hpp;/usr/local/include/djiosdk/posix_thread_manager.hpp;/usr/local/include/djiosdk/dji_aes.hpp;/usr/local/include/djiosdk/dji_crc.hpp;/usr/local/include/djiosdk/dji_open_protocol.hpp;/usr/local/include/djiosdk/dji_protocol_base.hpp;/usr/local/include/djiosdk/dji_circular_buffer.hpp;/usr/local/include/djiosdk/dji_macros.hpp;/usr/local/include/djiosdk/dji_singleton.hpp")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/include/djiosdk" TYPE FILE FILES
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_ack.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_broadcast.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_camera.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_command.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_control.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_error.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_gimbal.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_hardware_sync.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_hotpoint.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_mfio.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_mission_base.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_mission_manager.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_mission_type.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_mobile_communication.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_mobile_device.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_status.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_subscription.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_telemetry.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_telemetry_doc.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_type.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_vehicle.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_vehicle_callback.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_version.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_virtual_rc.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/api/inc/dji_waypoint.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/hal/inc/dji_hard_driver.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/hal/inc/dji_log.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/hal/inc/dji_memory.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/hal/inc/dji_platform_manager.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/hal/inc/dji_thread_manager.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/platform/linux/inc/linux_serial_device.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/platform/linux/inc/posix_thread.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/platform/linux/inc/posix_thread_manager.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/protocol/inc/dji_aes.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/protocol/inc/dji_crc.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/protocol/inc/dji_open_protocol.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/protocol/inc/dji_protocol_base.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/utility/inc/dji_circular_buffer.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/utility/inc/dji_macros.hpp"
    "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/utility/inc/dji_singleton.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/cmake/djiosdk/djiosdkTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}/usr/local/lib/cmake/djiosdk/djiosdkTargets.cmake"
         "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/cmake-build-debug/CMakeFiles/Export/_usr/local/lib/cmake/djiosdk/djiosdkTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}/usr/local/lib/cmake/djiosdk/djiosdkTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}/usr/local/lib/cmake/djiosdk/djiosdkTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/cmake/djiosdk/djiosdkTargets.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib/cmake/djiosdk" TYPE FILE FILES "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/cmake-build-debug/CMakeFiles/Export/_usr/local/lib/cmake/djiosdk/djiosdkTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/usr/local/lib/cmake/djiosdk/djiosdkTargets-debug.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/usr/local/lib/cmake/djiosdk" TYPE FILE FILES "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/cmake-build-debug/CMakeFiles/Export/_usr/local/lib/cmake/djiosdk/djiosdkTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/zhouxi/uav_project/Onboard-SDK/osdk-core/cmake-build-debug/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
