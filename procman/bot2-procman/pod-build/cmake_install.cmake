# Install script for directory: /home/argsubt/subt-system/procman/bot2-procman

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/argsubt/subt-system/procman/bot2-procman/build")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/argsubt/subt-system/procman/bot2-procman/pod-build/lib/liblcmtypes_bot2-procman.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/lcmtypes" TYPE FILE FILES
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/c/lcmtypes/bot2_procman.h"
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/c/lcmtypes/bot_procman_command2_t.h"
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/c/lcmtypes/bot_procman_deputy_cmd2_t.h"
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/c/lcmtypes/bot_procman_deputy_cmd_t.h"
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/c/lcmtypes/bot_procman_discovery_t.h"
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/c/lcmtypes/bot_procman_info2_t.h"
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/c/lcmtypes/bot_procman_info_t.h"
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/c/lcmtypes/bot_procman_orders2_t.h"
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/c/lcmtypes/bot_procman_orders_t.h"
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/c/lcmtypes/bot_procman_printf_t.h"
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/c/lcmtypes/bot_procman_sheriff_cmd2_t.h"
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/c/lcmtypes/bot_procman_sheriff_cmd_t.h"
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/c/lcmtypes/bot2_procman.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/argsubt/subt-system/procman/bot2-procman/pod-build/lib/pkgconfig/lcmtypes_bot2-procman.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/lcmtypes/bot_procman" TYPE FILE FILES "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/cpp/lcmtypes/bot_procman/command2_t.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/lcmtypes/bot_procman" TYPE FILE FILES "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/cpp/lcmtypes/bot_procman/deputy_cmd2_t.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/lcmtypes/bot_procman" TYPE FILE FILES "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/cpp/lcmtypes/bot_procman/deputy_cmd_t.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/lcmtypes/bot_procman" TYPE FILE FILES "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/cpp/lcmtypes/bot_procman/discovery_t.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/lcmtypes/bot_procman" TYPE FILE FILES "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/cpp/lcmtypes/bot_procman/info2_t.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/lcmtypes/bot_procman" TYPE FILE FILES "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/cpp/lcmtypes/bot_procman/info_t.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/lcmtypes/bot_procman" TYPE FILE FILES "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/cpp/lcmtypes/bot_procman/orders2_t.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/lcmtypes/bot_procman" TYPE FILE FILES "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/cpp/lcmtypes/bot_procman/orders_t.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/lcmtypes/bot_procman" TYPE FILE FILES "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/cpp/lcmtypes/bot_procman/printf_t.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/lcmtypes/bot_procman" TYPE FILE FILES "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/cpp/lcmtypes/bot_procman/sheriff_cmd2_t.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/lcmtypes/bot_procman" TYPE FILE FILES "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/cpp/lcmtypes/bot_procman/sheriff_cmd_t.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/lcmtypes" TYPE FILE FILES "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/cpp/lcmtypes/bot2_procman.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lcmtypes" TYPE FILE FILES
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/bot_procman_command2_t.lcm"
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/bot_procman_deputy_cmd2_t.lcm"
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/bot_procman_deputy_cmd_t.lcm"
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/bot_procman_discovery_t.lcm"
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/bot_procman_info2_t.lcm"
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/bot_procman_info_t.lcm"
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/bot_procman_orders2_t.lcm"
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/bot_procman_orders_t.lcm"
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/bot_procman_printf_t.lcm"
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/bot_procman_sheriff_cmd2_t.lcm"
    "/home/argsubt/subt-system/procman/bot2-procman/lcmtypes/bot_procman_sheriff_cmd_t.lcm"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/bot2-procman" TYPE FILE FILES "/home/argsubt/subt-system/procman/bot2-procman/pod-build/cmake/bot2-procman-config.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/bot2-procman/bot2-procman-targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/bot2-procman/bot2-procman-targets.cmake"
         "/home/argsubt/subt-system/procman/bot2-procman/pod-build/CMakeFiles/Export/lib/cmake/bot2-procman/bot2-procman-targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/bot2-procman/bot2-procman-targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/bot2-procman/bot2-procman-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/bot2-procman" TYPE FILE FILES "/home/argsubt/subt-system/procman/bot2-procman/pod-build/CMakeFiles/Export/lib/cmake/bot2-procman/bot2-procman-targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/bot2-procman" TYPE FILE FILES "/home/argsubt/subt-system/procman/bot2-procman/pod-build/CMakeFiles/Export/lib/cmake/bot2-procman/bot2-procman-targets-release.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/argsubt/subt-system/procman/bot2-procman/pod-build/src/deputy/cmake_install.cmake")
  include("/home/argsubt/subt-system/procman/bot2-procman/pod-build/python/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/argsubt/subt-system/procman/bot2-procman/pod-build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
