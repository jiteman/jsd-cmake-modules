function(
	JSD_SHOW_PROJECT_HEADER
	)
	if ( JSD_CMAKE_VERBOSE_OUTPUT_IS_ON )
		if ( JSD_CMAKE_PROJECT_NAME_OUTPUT_IS_ON )
			message( STATUS "[JSD] BUILDING PROJECT: ${PROJECT_NAME}..." )
		endif()
	endif()
endfunction()


function(
	JSD_SHOW_PROJECT_FOOTER
	)
	if ( JSD_CMAKE_VERBOSE_OUTPUT_IS_ON )
		if ( JSD_CMAKE_PROJECT_NAME_OUTPUT_IS_ON )
			message( STATUS "[JSD] BUILDING PROJECT: ${PROJECT_NAME} is completed" )
		endif()
	endif()
endfunction()


function(
	JSD_SHOW_PROJECT_GROUP_HEADER
	)
	if ( JSD_CMAKE_VERBOSE_OUTPUT_IS_ON )
		if ( JSD_CMAKE_PROJECT_NAME_OUTPUT_IS_ON )
			message( STATUS "[JSD] BUILDING PROJECT GROUP: ${PROJECT_NAME}..." )
		endif()
	endif()
endfunction()


function(
	JSD_SHOW_PROJECT_GROUP_FOOTER
	)
	if ( JSD_CMAKE_VERBOSE_OUTPUT_IS_ON )
		if ( JSD_CMAKE_PROJECT_NAME_OUTPUT_IS_ON )
			message( STATUS "[JSD] BUILDING PROJECT GROUP: ${PROJECT_NAME} is completed" )
		endif()
	endif()
endfunction()


function(
	JSD_SHOW_PROJECT_DEPENDENCY
	)
	if ( JSD_CMAKE_VERBOSE_OUTPUT_IS_ON )
		if ( JSD_CMAKE_DEPENDENCY_OUTPUT_IS_ON )
			message( STATUS "[JSD] Directory dependency: ${PROJECT_NAME}_DEPENDENCY_DIRS: " )
			JSD_ECHO_DIRECTORY_LIST( ${PROJECT_NAME}_DEPENDENCY_DIRS )
			message( STATUS "[JSD] Library dependency: ${PROJECT_NAME}_DEPENDENCY_LIBS: ${${PROJECT_NAME}_DEPENDENCY_LIBS}" )
			message( STATUS "[JSD] Build dependency: ${PROJECT_NAME}_BUILD_DEFINITIONS: ${${PROJECT_NAME}_BUILD_DEFINITIONS}" )
			message( STATUS "[JSD] Link dependency: ${PROJECT_NAME}_LINK_DEFINITIONS: ${${PROJECT_NAME}_LINK_DEFINITIONS}" )
		endif()
	endif()
endfunction()


function(
	JSD_SHOW_TEST_SOURCE_DIRS
	)
	if ( JSD_CMAKE_VERBOSE_OUTPUT_IS_ON )
		if ( JSD_CMAKE_DEPENDENCY_OUTPUT_IS_ON )
			message( STATUS "[JSD] Directory dependency: ${PROJECT_NAME}_TEST_SOURCE_DIRS: " )
			JSD_ECHO_DIRECTORY_LIST( ${PROJECT_NAME}_TEST_SOURCE_DIRS )
		endif()
	endif()
endfunction()


function(
	JSD_SHOW_MESSAGE
	message_text
)
	message( STATUS "[JSD] ${message_text}" )
endfunction()


function(
	JSD_SHOW_VERBOSE_MESSAGE
	message_text
)
	if ( JSD_CMAKE_VERBOSE_OUTPUT_IS_ON )
		message( STATUS "[JSD] ${message_text}" )
	endif()
endfunction()


function(
	JSD_SHOW_DEPENDENCY_MESSAGE
	message_text
)
	if ( JSD_CMAKE_VERBOSE_OUTPUT_IS_ON )
		if ( JSD_CMAKE_DEPENDENCY_OUTPUT_IS_ON )
			message( STATUS "[JSD] ${message_text}" )
		endif()
	endif()
endfunction()


function(
	JSD_SHOW_PROJECT_NAME_MESSAGE
	message_text
)
	if ( JSD_CMAKE_VERBOSE_OUTPUT_IS_ON )
		if ( JSD_CMAKE_PROJECT_NAME_OUTPUT_IS_ON )
			message( STATUS "[JSD] ${message_text}" )
		endif()
	endif()
endfunction()


function(
	JSD_SHOW_BUILD_MESSAGE
	message_text
)
	if ( JSD_CMAKE_VERBOSE_OUTPUT_IS_ON )
		if ( JSD_CMAKE_BUILD_OUTPUT_IS_ON )
			message( STATUS "[JSD] ${message_text}" )
		endif()
	endif()
endfunction()


function(
	JSD_SHOW_CMAKE_MESSAGE
	message_text
)
	if ( JSD_CMAKE_VERBOSE_OUTPUT_IS_ON )
		if ( JSD_CMAKE_CMAKE_OUTPUT_IS_ON )
			message( STATUS "[JSD] ${message_text}" )
		endif()
	endif()
endfunction()


function(
	JSD_ECHO_DIRECTORY_LIST
	directory_list
)
	foreach( directory ${${directory_list}} )
		message( STATUS "  " ${directory} )
	endforeach()
endfunction()


function(
	JSD_ECHO_DIRECTORY_LIST_IF
	is_on
	directory_list
)
	if ( ${is_on} )
		foreach( directory ${${directory_list}} )
			message( STATUS "  " ${directory} )
		endforeach()
	endif()
endfunction()
