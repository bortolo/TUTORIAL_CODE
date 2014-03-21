
project(Geometry)

if(COMPILE_GEOMETRY)

set (${PROJECT_NAME}_headers "Geometry.hpp")
set (${PROJECT_NAME}_sources "Geometry.cpp")


if(USE_SHARED)
	add_library(${PROJECT_NAME} SHARED ${${PROJECT_NAME}_headers}
				    ${${PROJECT_NAME}_sources} )
else (!USE_SHARED)
	add_library(${PROJECT_NAME} STATIC ${${PROJECT_NAME}_headers}
				    ${${PROJECT_NAME}_sources} )
endif(USE_SHARED)

target_link_libraries(${PROJECT_NAME} Geometry)


install(TARGETS ${PROJECT_NAME} 
		RUNTIME DESTINATION bin
		LIBRARY DESTINATION lib
		ARCHIVE DESTINATION lib/static)


endif(COMPILE_GEOMETRY)
