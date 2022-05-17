JSD_CMAKE_CURRENT_FILE_IN( "set-compiler-settings.cmake" )

if ( UNIX )
	JSD_SHOW_BUILD_MESSAGE( "[JSD] COMPILER SETTINGS: Linux" )
	include( ${JSD_CMAKE_SETTINGS_PATH}/compiler-settings/set-linux-C-compiler-settings.cmake )
	include( ${JSD_CMAKE_SETTINGS_PATH}/compiler-settings/set-linux-C++-compiler-settings.cmake )

elseif( WIN32 )
	JSD_SHOW_BUILD_MESSAGE( "[JSD] COMPILER SETTINGS: Windows" )
	include( ${JSD_CMAKE_SETTINGS_PATH}/compiler-settings/set-windows-C-compiler-settings.cmake )
	include( ${JSD_CMAKE_SETTINGS_PATH}/compiler-settings/set-windows-C++-compiler-settings.cmake )

else()
	message( STATUS "[JSD] COMPILER SETTINGS: Unsupported platform. Default settings are used." )

endif()


#CONFIG += c++1z
#CONFIG += exceptions
#CONFIG += depend_includepath
#CONFIG += incremental

JSD_CMAKE_CURRENT_FILE_OUT( "set-compiler-settings.cmake" )
