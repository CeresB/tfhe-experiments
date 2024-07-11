# Install script for directory: /home/myguardian/tfhe-stuff/tfhe/src

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
    set(CMAKE_INSTALL_CONFIG_NAME "optim")
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

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tfhe" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/myguardian/tfhe-stuff/tfhe/src/include/lagrangehalfc_arithmetic.h"
    "/home/myguardian/tfhe-stuff/tfhe/src/include/lwe-functions.h"
    "/home/myguardian/tfhe-stuff/tfhe/src/include/lwebootstrappingkey.h"
    "/home/myguardian/tfhe-stuff/tfhe/src/include/lwekey.h"
    "/home/myguardian/tfhe-stuff/tfhe/src/include/lwekeyswitch.h"
    "/home/myguardian/tfhe-stuff/tfhe/src/include/lweparams.h"
    "/home/myguardian/tfhe-stuff/tfhe/src/include/lwesamples.h"
    "/home/myguardian/tfhe-stuff/tfhe/src/include/numeric_functions.h"
    "/home/myguardian/tfhe-stuff/tfhe/src/include/polynomials.h"
    "/home/myguardian/tfhe-stuff/tfhe/src/include/polynomials_arithmetic.h"
    "/home/myguardian/tfhe-stuff/tfhe/src/include/tfhe.h"
    "/home/myguardian/tfhe-stuff/tfhe/src/include/tfhe_core.h"
    "/home/myguardian/tfhe-stuff/tfhe/src/include/tfhe_garbage_collector.h"
    "/home/myguardian/tfhe-stuff/tfhe/src/include/tfhe_gate_bootstrapping_functions.h"
    "/home/myguardian/tfhe-stuff/tfhe/src/include/tfhe_gate_bootstrapping_structures.h"
    "/home/myguardian/tfhe-stuff/tfhe/src/include/tfhe_generic_streams.h"
    "/home/myguardian/tfhe-stuff/tfhe/src/include/tfhe_generic_templates.h"
    "/home/myguardian/tfhe-stuff/tfhe/src/include/tfhe_io.h"
    "/home/myguardian/tfhe-stuff/tfhe/src/include/tgsw.h"
    "/home/myguardian/tfhe-stuff/tfhe/src/include/tgsw_functions.h"
    "/home/myguardian/tfhe-stuff/tfhe/src/include/tlwe.h"
    "/home/myguardian/tfhe-stuff/tfhe/src/include/tlwe_functions.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/myguardian/tfhe-stuff/tfhe/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
