
project(main1)

if(COMPILE_MAIN1)

set (${PROJECT_NAME}_headers "")
set (${PROJECT_NAME}_sources main.cpp)

add_executable(${PROJECT_NAME} ${${PROJECT_NAME}_headers}
${${PROJECT_NAME}_sources} )



if (COMPILE_FESPACE)
  set (EXTRA_LIBS ${EXTRA_LIBS} FEspace)
endif (COMPILE_FESPACE)

if (COMPILE_MESH)
  set (EXTRA_LIBS ${EXTRA_LIBS} Mesh)
endif (COMPILE_MESH)

if (COMPILE_GEOMETRY)
  set (EXTRA_LIBS ${EXTRA_LIBS} Geometry)
endif (COMPILE_GEOMETRY)

if (COMPILE_QUAD)
   set (EXTRA_LIBS ${EXTRA_LIBS} Quadrature)
endif(COMPILE_QUAD)

target_link_libraries(${PROJECT_NAME} ${EXTRA_LIBS})


install(TARGETS ${PROJECT_NAME} 
		RUNTIME DESTINATION bin
		LIBRARY DESTINATION lib
		ARCHIVE DESTINATION lib/static)

endif(COMPILE_MAIN1)



