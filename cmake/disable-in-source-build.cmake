JSD_CMAKE_CURRENT_FILE_IN( "disable-in-source-build.cmake" )

if ( "${PROJECT_SOURCE_DIR}" STREQUAL "${PROJECT_BINARY_DIR}" )
	message( SEND_ERROR "[JSD] IN-SOURCE BUILD IS DISABLED - In-source build is disabled." )
endif()

string( FIND "${PROJECT_BINARY_DIR}" "${PROJECT_SOURCE_DIR}" JSD_IS_IN_SOURCE_BUILD )

if ( NOT ${JSD_IS_IN_SOURCE_BUILD} EQUAL -1 )
	message( SEND_ERROR "[JSD] IN-SOURCE BUILD IS DISABLED - In-source build is disabled." )
endif()

JSD_CMAKE_CURRENT_FILE_OUT( "disable-in-source-build.cmake" )
