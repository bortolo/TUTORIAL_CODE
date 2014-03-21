
project(TestQuad1D)

if(COMPILE_TESTQUAD1D)

set (${PROJECT_NAME}_headers "")
set (${PROJECT_NAME}_sources main.cpp)

add_executable(${PROJECT_NAME} ${${PROJECT_NAME}_headers}
${${PROJECT_NAME}_sources} )


set (EXTRA_LIBS ${EXTRA_LIBS} MyQuadRules Quadrature)


target_link_libraries(${PROJECT_NAME} ${EXTRA_LIBS})


install(TARGETS ${PROJECT_NAME} 
		RUNTIME DESTINATION bin
		LIBRARY DESTINATION lib
		ARCHIVE DESTINATION lib/static)

endif(COMPILE_TESTQUAD1D)



