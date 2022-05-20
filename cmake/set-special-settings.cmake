JSD_CMAKE_CURRENT_FILE_IN( "set-special-settings.cmake" )

if ( UNIX )
	include( ${JSD_CMAKE_PATH}/special-settings/set-linux-special-settings.cmake )
elseif ( WIN32 )
	include( ${JSD_CMAKE_PATH}/special-settings/set-windows-special-settings.cmake )

else()
	message( STATUS "[JSD] set-special-settings.cmake: Unsupported platform. Default special settings are used." )

endif()

JSD_CMAKE_CURRENT_FILE_OUT( "set-special-settings.cmake" )
