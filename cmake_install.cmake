# Install script for directory: /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE

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

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Geometry/cmake_install.cmake")
  INCLUDE("/Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Mesh/cmake_install.cmake")
  INCLUDE("/Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FEspace/cmake_install.cmake")
  INCLUDE("/Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Quadrature/cmake_install.cmake")
  INCLUDE("/Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/QuadratureRules/cmake_install.cmake")
  INCLUDE("/Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FactoryQuad/cmake_install.cmake")
  INCLUDE("/Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/TestQuad/cmake_install.cmake")
  INCLUDE("/Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/TestQuad1D/cmake_install.cmake")
  INCLUDE("/Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/TestGeometry/cmake_install.cmake")
  INCLUDE("/Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/main1/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
