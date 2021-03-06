# - Config file for the bot2-procman package

if(CMAKE_MAJOR_VERSION LESS 3)
  message(FATAL_ERROR "CMake >= 3.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 3.0)
set(CMAKE_IMPORT_FILE_VERSION 1)

if(CMAKE_VERSION VERSION_LESS 3.9.0)
  # Imported from CMake 3.9.0
  macro(find_dependency dep)
    if (NOT ${dep}_FOUND)
      set(cmake_fd_quiet_arg)
      if(${CMAKE_FIND_PACKAGE_NAME}_FIND_QUIETLY)
        set(cmake_fd_quiet_arg QUIET)
      endif()
      set(cmake_fd_required_arg)
      if(${CMAKE_FIND_PACKAGE_NAME}_FIND_REQUIRED)
        set(cmake_fd_required_arg REQUIRED)
      endif()

      get_property(cmake_fd_alreadyTransitive GLOBAL PROPERTY
        _CMAKE_${dep}_TRANSITIVE_DEPENDENCY
      )

      find_package(${dep} ${ARGN}
        ${cmake_fd_quiet_arg}
        ${cmake_fd_required_arg}
      )

      if(NOT DEFINED cmake_fd_alreadyTransitive OR cmake_fd_alreadyTransitive)
        set_property(GLOBAL PROPERTY _CMAKE_${dep}_TRANSITIVE_DEPENDENCY TRUE)
      endif()

      if (NOT ${dep}_FOUND)
        set(${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE "${CMAKE_FIND_PACKAGE_NAME} could not be found because dependency ${dep} could not be found.")
        set(${CMAKE_FIND_PACKAGE_NAME}_FOUND False)
        return()
      endif()
      set(cmake_fd_required_arg)
      set(cmake_fd_quiet_arg)
      set(cmake_fd_exact_arg)
    endif()
  endmacro()
else()
  include(CMakeFindDependencyMacro)
endif()

# Import targets that were generated with custom commands.
if(NOT TARGET libbot2::lcmtypes_bot2-procman-java)
  add_library(libbot2::lcmtypes_bot2-procman-java STATIC IMPORTED)
  set_target_properties(libbot2::lcmtypes_bot2-procman-java PROPERTIES
    IMPORTED_LOCATION /home/argsubt/subt-system/procman/bot2-procman/pod-build/lcmtypes_bot2-procman.jar
    JAR_FILE /home/argsubt/subt-system/procman/bot2-procman/pod-build/lcmtypes_bot2-procman.jar
  )
endif()
if(NOT TARGET libbot2::bot-procman-sheriff)
  add_executable(libbot2::bot-procman-sheriff IMPORTED)
  set_target_properties(libbot2::bot-procman-sheriff PROPERTIES
    IMPORTED_LOCATION "/home/argsubt/subt-system/procman/bot2-procman/pod-build/python/bot-procman-sheriff"
  )
endif()
# Our library dependencies (contains definitions for IMPORTED targets)
if(NOT TARGET libbot2::bot-procman-deputy)
  include(${CMAKE_CURRENT_LIST_DIR}/bot2-procman-targets.cmake)
endif()

unset(${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX)
unset(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
