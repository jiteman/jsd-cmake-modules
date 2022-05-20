include( ${JSD_CMAKE_PATH}/set-verbosity-configuration.cmake )

JSD_CMAKE_CURRENT_FILE_IN( "set-all-settings.cmake" )

include( ${JSD_CMAKE_PATH}/utilities/functions-and-macroses.cmake )

include( ${JSD_CMAKE_PATH}/disable-in-source-build.cmake )

include( ${JSD_CMAKE_PATH}/select-build-configuration.cmake )

include( ${JSD_CMAKE_PATH}/reset-all-settings.cmake )

JSD_CMAKE_CURRENT_FILE_OUT( "set-all-settings.cmake" )
