JSD_CMAKE_CURRENT_FILE_IN( "set-linker-settings.cmake" )

if ( UNIX )
	JSD_SHOW_BUILD_MESSAGE( "[JSD] LINKER SETTINGS: Linux" )
	include( ${JSD_CMAKE_PATH}/linker-settings/set-linux-linker-settings.cmake )

elseif( WIN32 )
	JSD_SHOW_BUILD_MESSAGE( "[JSD] LINKER SETTINGS: Windows")
	include( ${JSD_CMAKE_PATH}/linker-settings/set-windows-linker-settings.cmake )

else()
	message( STATUS "[JSD] LINKER SETTINGS: Unsupported platform. Default settings are used." )

endif()

JSD_CMAKE_CURRENT_FILE_IN( "set-linker-settings.cmake" )
