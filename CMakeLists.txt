cmake_minimum_required (VERSION 2.8.12)

project(TUTORIALCODE)

message("Binary Tree path: ${PROJECT_BINARY_DIR}")
message("Source Tree path: ${PROJECT_SOURCE_DIR}")

set(CMAKE_INSTALL_PREFIX "/Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FEMOS" CACHE PATH "Momentaneo posto" FORCE)
set(CMAKE_INSTALL_NAME_DIR "${CMAKE_INSTALL_PREFIX}/lib")

option (COMPILE_FESPACE  "Compile fespace library" ON) 
option (COMPILE_GEOMETRY  "Compile geometry library" ON) 
option (COMPILE_MESH  "Compile mesh library" ON) 
option (COMPILE_QUAD  "Compile quad library" ON) 
option (COMPILE_FACTORY  "Compile factory lib" ON) 

option (COMPILE_MAIN1  "Compile exe main1" ON) 
option (COMPILE_TESTGEOM  "Compile exe testgeom" ON) 
option (COMPILE_TESTQUAD  "Compile exe testgeom" ON) 
option (COMPILE_TESTQUAD1D  "Compile exe testgeom" ON) 

option (USE_SHARED  "Use shared library" ON) 

add_subdirectory(Geometry)
add_subdirectory(Mesh)
add_subdirectory(FEspace)
add_subdirectory(Quadrature)
add_subdirectory(QuadratureRules)
add_subdirectory(FactoryQuad)

add_subdirectory(TestQuad)
add_subdirectory(TestQuad1D)
add_subdirectory(TestGeometry)
add_subdirectory(main1)

