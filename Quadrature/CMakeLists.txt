
project(Quadrature)

if(COMPILE_MESH)

set (${PROJECT_NAME}_headers "Quadrature.cpp")
set (${PROJECT_NAME}_sources "Quadrature.cpp")

if(USE_SHARED)
	add_library(${PROJECT_NAME} SHARED ${${PROJECT_NAME}_headers}
				    ${${PROJECT_NAME}_sources} )
else (!USE_SHARED)
	add_library(${PROJECT_NAME} STATIC ${${PROJECT_NAME}_headers}
				    ${${PROJECT_NAME}_sources} )
endif(USE_SHARED)

target_link_libraries(${PROJECT_NAME} Quadrature)

endif(COMPILE_MESH)

install(TARGETS ${PROJECT_NAME} 
		RUNTIME DESTINATION bin
		LIBRARY DESTINATION lib
		ARCHIVE DESTINATION lib/static)


