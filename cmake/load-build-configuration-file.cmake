JSD_CMAKE_CURRENT_FILE_IN( "load-build-configuration-file.cmake" )

if ( NOT DEFINED JSD_BUILD_CONFIGURATION_FILE_WAS_INCLUDED )
	message( STATUS "[JMSD] BUILD configuration file is INCLUDED" )
	set( JSD_BUILD_CONFIGURATION_FILE_WAS_INCLUDED true )

	if ( EXISTS "${CMAKE_SOURCE_DIR}/CMake-build-configuration.cmake" ) # JMSD way to deal with configurations
		include( ${CMAKE_SOURCE_DIR}/CMake-build-configuration.cmake )
	else()
		set( JSD_ROOT_BUILD_CONFIGURATION set_to_release ) # [ set_to_debug | set_to_release ]
		set( JSD_ROOT_RELEASE_LINK_TIME_CODE_GENERATION is_off ) # [ is_on | is_off ] in release only
	endif()

else()
	message( SEND_ERROR [JMSD] BUILD configuration file is already included" )

endif()

JSD_CMAKE_CURRENT_FILE_OUT( "load-build-configuration-file.cmake" )
