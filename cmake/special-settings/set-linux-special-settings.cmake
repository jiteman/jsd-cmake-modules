include( ${JSD_CMAKE_PATH}/set-verbosity-configuration.cmake )

JSD_CMAKE_CURRENT_FILE_IN( "set-linux-special-settings.cmake" )

if ( UNIX )

else()
	message( SEND_ERROR "[JSD] set-linux-special-settings.cmake is included while not on linux" )

endif()

JSD_CMAKE_CURRENT_FILE_OUT( "set-linux-special-settings.cmake" )
