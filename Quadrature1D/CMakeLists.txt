
project(Quadrature1D)

if(COMPILE_QUAD1D)

set (${PROJECT_NAME}_headers "Quadrature1D.hpp" "NumericalQuad.hpp")
set (${PROJECT_NAME}_sources "Quadrature1D.cpp" "NumericalQuad.cpp")

if(USE_SHARED)
	add_library(${PROJECT_NAME} SHARED ${${PROJECT_NAME}_headers}
				    ${${PROJECT_NAME}_sources} )
else (!USE_SHARED)
	add_library(${PROJECT_NAME} STATIC ${${PROJECT_NAME}_headers}
				    ${${PROJECT_NAME}_sources} )
endif(USE_SHARED)

target_link_libraries(${PROJECT_NAME} Quadrature1D)



install(TARGETS ${PROJECT_NAME} 
		RUNTIME DESTINATION bin
		LIBRARY DESTINATION lib
		ARCHIVE DESTINATION lib/static)
endif(COMPILE_QUAD1D)

