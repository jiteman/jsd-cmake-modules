JSD_CMAKE_CURRENT_FILE_IN( "reset-all-settings.cmake" )

include( ${JSD_CMAKE_SETTINGS_PATH}/set-cmake-settings.cmake )

include( ${JSD_CMAKE_SETTINGS_PATH}/set-special-settings.cmake )

include( ${JSD_CMAKE_SETTINGS_PATH}/set-target-directories.cmake )

include( ${JSD_CMAKE_SETTINGS_PATH}/set-compiler-settings.cmake )

include( ${JSD_CMAKE_SETTINGS_PATH}/set-linker-settings.cmake )

JSD_CMAKE_CURRENT_FILE_OUT( "reset-all-settings.cmake" )
