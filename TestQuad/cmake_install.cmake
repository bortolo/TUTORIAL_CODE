# Install script for directory: /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/TestQuad

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FEMOS")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/TestQuad/TestQuad")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/TestQuad" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/TestQuad")
    EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
      -change "/Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Geometry/libGeometry.dylib" "/Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FEMOS/lib/libGeometry.dylib"
      -change "/Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Quadrature/libQuadrature.dylib" "/Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FEMOS/lib/libQuadrature.dylib"
      -change "/Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/QuadratureRules/libQuadratureRules.dylib" "/Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FEMOS/lib/libQuadratureRules.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/TestQuad")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

