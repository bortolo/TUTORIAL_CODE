
project(QuadratureRules)

if(COMPILE_QUAD)

set (${PROJECT_NAME}_headers  "Quadrature.hpp" "Quadrature1D.hpp")
set (${PROJECT_NAME}_sources "Quadrature.cpp" "Quadrature1D.cpp")

if(USE_SHARED)
	add_library(${PROJECT_NAME} SHARED ${${PROJECT_NAME}_headers}
				    ${${PROJECT_NAME}_sources} )
else (!USE_SHARED)
	add_library(${PROJECT_NAME} STATIC ${${PROJECT_NAME}_headers}
				    ${${PROJECT_NAME}_sources} )
endif(USE_SHARED)

target_link_libraries(${PROJECT_NAME} QuadratureRules)

install(TARGETS ${PROJECT_NAME} 
		RUNTIME DESTINATION bin
		LIBRARY DESTINATION lib
		ARCHIVE DESTINATION lib/static)
endif(COMPILE_QUAD)

