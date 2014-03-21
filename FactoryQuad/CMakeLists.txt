
project(MyQuadRules)


set (${PROJECT_NAME}_headers "QuadFactory.hpp")
set (${PROJECT_NAME}_sources "QuadFactory.cpp")

add_library(${PROJECT_NAME} SHARED ${${PROJECT_NAME}_headers}   ${${PROJECT_NAME}_sources} )

target_link_libraries(${PROJECT_NAME} MyQuadRules QuadratureRules)

install(TARGETS ${PROJECT_NAME} 
		RUNTIME DESTINATION bin
		LIBRARY DESTINATION lib
		ARCHIVE DESTINATION lib/static)
