
project(TestQuad)

if(COMPILE_TESTQUAD)

set (${PROJECT_NAME}_headers "")
set (${PROJECT_NAME}_sources test.cpp)

add_executable(${PROJECT_NAME} ${${PROJECT_NAME}_headers}
${${PROJECT_NAME}_sources} )


if (COMPILE_GEOMETRY)
  set (EXTRA_LIBS ${EXTRA_LIBS} Geometry)
endif (COMPILE_GEOMETRY)
if (COMPILE_QUAD)
  set (EXTRA_LIBS ${EXTRA_LIBS} Quadrature QuadratureRules)
endif (COMPILE_QUAD)


target_link_libraries(${PROJECT_NAME} ${EXTRA_LIBS})


install(TARGETS ${PROJECT_NAME} 
		RUNTIME DESTINATION bin
		LIBRARY DESTINATION lib
		ARCHIVE DESTINATION lib/static)

endif(COMPILE_TESTQUAD)
