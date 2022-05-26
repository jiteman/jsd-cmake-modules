if ( NOT DEFINED JSD_VERBOSE_CONFIGURATION_FILE_WAS_INCLUDED )
	message( STATUS "[JSD] VERBOSE configuration file is INCLUDED" )
	set( JSD_VERBOSE_CONFIGURATION_FILE_WAS_INCLUDED true )

	if ( EXISTS "${CMAKE_SOURCE_DIR}/CMake-verbosity-configuration.cmake" ) # JSD way to deal with configurations
		include( ${CMAKE_SOURCE_DIR}/CMake-verbosity-configuration.cmake )
	else()
		set( JSD_CMAKE_VERBOSE_OUTPUT is_off ) # [ is_on | is_off ]
		set( JSD_CMAKE_DEPENDENCY_OUTPUT is_off ) # [ is_on | is_off ]
		set( JSD_CMAKE_PROJECT_NAME_OUTPUT is_off ) # [ is_on | is_off ]
		set( JSD_CMAKE_BUILD_OUTPUT is_off ) # [ is_on | is_off ]
	endif()

	if( ${JSD_CMAKE_VERBOSE_OUTPUT} STREQUAL "is_on" )
		set( JSD_CMAKE_VERBOSE_OUTPUT_IS_ON true )
		message( STATUS "[JSD] Verbose output is on" )
	elseif( ${JSD_CMAKE_VERBOSE_OUTPUT} STREQUAL "is_off" )
		set( JSD_CMAKE_VERBOSE_OUTPUT_IS_ON false )
		message( STATUS "[JSD] Verbose output is off" )
	else()
		message( SEND_ERROR "[JSD] [ERROR] JSD_CMAKE_VERBOSE_OUTPUT = ${JSD_CMAKE_VERBOSE_OUTPUT}" )
	endif()

	if ( ${JSD_CMAKE_DEPENDENCY_OUTPUT} STREQUAL "is_on" )
		set( JSD_CMAKE_DEPENDENCY_OUTPUT_IS_ON true )
		message( STATUS "[JSD] Dependency output is on" )
	elseif ( ${JSD_CMAKE_DEPENDENCY_OUTPUT} STREQUAL "is_off" )
		set( JSD_CMAKE_DEPENDENCY_OUTPUT_IS_ON false )
		message( STATUS "[JSD] Dependency output is off" )
	else()
		message( SEND_ERROR "[JSD] [ERROR] JSD_CMAKE_DEPENDENCY_OUTPUT = ${JSD_CMAKE_DEPENDENCY_OUTPUT}" )
	endif()

	if ( ${JSD_CMAKE_PROJECT_NAME_OUTPUT} STREQUAL "is_on" )
		set( JSD_CMAKE_PROJECT_NAME_OUTPUT_IS_ON true )
		message( STATUS "[JSD] Project name output is on" )
	elseif ( ${JSD_CMAKE_PROJECT_NAME_OUTPUT} STREQUAL "is_off" )
		set( JSD_CMAKE_PROJECT_NAME_OUTPUT_IS_ON false )
		message( STATUS "[JSD] Project name output is off" )
	else()
		message( SEND_ERROR "[JSD] [ERROR] JSD_CMAKE_PROJECT_NAME_OUTPUT = ${JSD_CMAKE_PROJECT_NAME_OUTPUT}" )
	endif()

	if( ${JSD_CMAKE_BUILD_OUTPUT} STREQUAL "is_on" )
		set( JSD_CMAKE_BUILD_OUTPUT_IS_ON true )
		message( STATUS "[JSD] Build output is on" )
	elseif( ${JSD_CMAKE_BUILD_OUTPUT} STREQUAL "is_off" )
		set( JSD_CMAKE_BUILD_OUTPUT_IS_ON false )
		message( STATUS "[JSD] Build output is off" )
	else()
		message( SEND_ERROR "[JSD] [ERROR] JSD_CMAKE_BUILD_OUTPUT = ${JSD_CMAKE_BUILD_OUTPUT}" )
	endif()

	if( ${JSD_CMAKE_CMAKE_OUTPUT} STREQUAL "is_on" )
		set( JSD_CMAKE_CMAKE_OUTPUT_IS_ON true )
		message( STATUS "[JSD] CMake output is on" )
	elseif( ${JSD_CMAKE_BUILD_OUTPUT} STREQUAL "is_off" )
		set( JSD_CMAKE_CMAKE_OUTPUT_IS_ON false )
		message( STATUS "[JSD] CMake output is off" )
	else()
		message( SEND_ERROR "[JSD] [ERROR] JSD_CMAKE_CMAKE_OUTPUT = ${JSD_CMAKE_CMAKE_OUTPUT}" )
	endif()

endif()
