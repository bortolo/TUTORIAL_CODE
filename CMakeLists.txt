cmake_minimum_required (VERSION 2.6)

project(TUTORIALCODE)

message("Binary Tree path: ${PROJECT_BINARY_DIR}")
message("Source Tree path: ${PROJECT_SOURCE_DIR}")

set(CMAKE_INSTALL_PREFIX "/Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FEMOS" CACHE PATH "Momentaneo posto" FORCE)

option (USE_FESPACE  "Use fespace library" ON) 
option (USE_GEOMETRY  "Use geometry library" ON) 
option (USE_MESH  "Use mesh library" ON) 

option (COMPILE_FESPACE  "Compile fespace library" ON) 
option (COMPILE_GEOMETRY  "Compile geometry library" ON) 
option (COMPILE_MESH  "Compile mesh library" ON) 

option (COMPILE_MAIN1  "Compile exe main1" ON) 

option (USE_SHARED  "Use shared library" OFF) 

add_subdirectory(Geometry)
add_subdirectory(Mesh)
add_subdirectory(FEspace)
add_subdirectory(Quadrature)

add_subdirectory(main1)

