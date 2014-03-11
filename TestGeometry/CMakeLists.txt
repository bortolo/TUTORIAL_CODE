
project(TestGeometry)

if(COMPILE_TESTGEOM)

set (${PROJECT_NAME}_headers "")
set (${PROJECT_NAME}_sources Test.cpp)

add_executable(${PROJECT_NAME} ${${PROJECT_NAME}_headers}
${${PROJECT_NAME}_sources} )

set (EXTRA_LIBS ${EXTRA_LIBS} Geometry)

target_link_libraries(${PROJECT_NAME} ${EXTRA_LIBS})


install(TARGETS ${PROJECT_NAME} 
		RUNTIME DESTINATION bin
		LIBRARY DESTINATION lib
		ARCHIVE DESTINATION lib/static)

endif(COMPILE_TESTGEOM)
