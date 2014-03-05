
project(main1)

if(COMPILE_MAIN1)

set (${PROJECT_NAME}_headers "")
set (${PROJECT_NAME}_sources main.cpp)

add_executable(${PROJECT_NAME} ${${PROJECT_NAME}_headers}
${${PROJECT_NAME}_sources} )



if (USE_FESPACE)
  set (EXTRA_LIBS ${EXTRA_LIBS} FEspace)
endif (USE_FESPACE)

if (USE_MESH)
  set (EXTRA_LIBS ${EXTRA_LIBS} Mesh)
endif (USE_MESH)

if (USE_GEOMETRY)
  set (EXTRA_LIBS ${EXTRA_LIBS} Geometry)
endif (USE_GEOMETRY)

set (EXTRA_LIBS ${EXTRA_LIBS} Quadrature)

target_link_libraries(${PROJECT_NAME} ${EXTRA_LIBS})

endif(COMPILE_MAIN1)

install(TARGETS ${PROJECT_NAME} 
		RUNTIME DESTINATION bin
		LIBRARY DESTINATION lib
		ARCHIVE DESTINATION lib/static)


