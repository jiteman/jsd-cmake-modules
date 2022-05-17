include( ${JSD_CMAKE_SETTINGS_PATH}/set-verbosity-configuration.cmake )

JSD_CMAKE_CURRENT_FILE_IN( "set-linux-compiler-settings.cmake" )

if ( UNIX )
	set( JSD_CMAKE_C_FLAGS "" )
	set( JSD_CMAKE_C_FLAGS_DEBUG "" )
	set( JSD_CMAKE_C_FLAGS_RELEASE "" )

	# C language

	# C++ language


	# warning settings
	#	common
	list( APPEND JSD_CMAKE_C_FLAGS "-Wall" ) # enable all warnings
	list( APPEND JSD_CMAKE_C_FLAGS "-Wextra" ) # enable extra warnings
	list( APPEND JSD_CMAKE_C_FLAGS "-Werror" ) # treat warnings as errors
	list( APPEND JSD_CMAKE_C_FLAGS "-Wpedantic" )
	list( APPEND JSD_CMAKE_C_FLAGS "-pedantic-errors" ) #
	list( APPEND JSD_CMAKE_C_FLAGS "-Wformat=2" ) #
	list( APPEND JSD_CMAKE_C_FLAGS "-W" ) #
	#	debug
	#	release

	# special warning settings
	#	common
	# same as for C
	list( APPEND JSD_CMAKE_C_FLAGS "-Wundef" )
	list( APPEND JSD_CMAKE_C_FLAGS "-Wshadow" ) # declaration of '' shadows a member of ''
	list( APPEND JSD_CMAKE_C_FLAGS "-Wcast-qual" )
	list( APPEND JSD_CMAKE_C_FLAGS "-Wcast-align" )
	list( APPEND JSD_CMAKE_C_FLAGS "-Wwrite-strings" )
	list( APPEND JSD_CMAKE_C_FLAGS "-Wpointer-arith" )
	list( APPEND JSD_CMAKE_C_FLAGS "-Wconversion" )
	#	list( APPEND JSD_CMAKE_C_FLAGS "-Wsign-compare" ) # [-Wextra]
	list( APPEND JSD_CMAKE_C_FLAGS "-Wmissing-declarations" ) # no previous declaration for ''
	#	list( APPEND JSD_CMAKE_C_FLAGS "-Waggregate-return" )
	list( APPEND JSD_CMAKE_C_FLAGS "-Winline" )
	list( APPEND JSD_CMAKE_C_FLAGS "--param inline-unit-growth=30" )
	list( APPEND JSD_CMAKE_C_FLAGS "-Wredundant-decls" )
	list( APPEND JSD_CMAKE_C_FLAGS "-Winline" )
	list( APPEND JSD_CMAKE_C_FLAGS "-Wno-long-long" )
	#	list( APPEND JSD_CMAKE_C_FLAGS "-Wmissing-noreturn" )
	list( APPEND JSD_CMAKE_C_FLAGS "-Wno-missing-field-initializers" )
	list( APPEND JSD_CMAKE_C_FLAGS "-Wno-missing-braces" )
	#~same as for C
	# C++ specific
	list( APPEND JSD_CMAKE_C_FLAGS "-Wfloat-equal" )
	list( APPEND JSD_CMAKE_C_FLAGS "-Wmissing-format-attribute" )
	list( APPEND JSD_CMAKE_C_FLAGS "-Wunreachable-code" )
	#	list( APPEND JSD_CMAKE_C_FLAGS "-Wno-format-nonliteral" )
	#	list( APPEND JSD_CMAKE_C_FLAGS "-Wno-format-security" )
	#	list( APPEND JSD_CMAKE_C_FLAGS "-Wdisabled-optimization" )
	#	list( APPEND JSD_CMAKE_C_FLAGS "-Wpacked" )
	#	list( APPEND JSD_CMAKE_C_FLAGS "-Wno-parentheses" )
	#	list( APPEND JSD_CMAKE_C_FLAGS "-Wpadded" )
	list( APPEND JSD_CMAKE_C_FLAGS "--param large-stack-frame-growth=5000" )
	list( APPEND JSD_CMAKE_C_FLAGS "-Wshift-negative-value" )
	list( APPEND JSD_CMAKE_C_FLAGS "-Wshift-overflow=2" )
	#	list( APPEND JSD_CMAKE_C_FLAGS "-fno-delete-null-pointer-checks" )
	#	list( APPEND JSD_CMAKE_C_FLAGS "" )
	#	list( APPEND JSD_CMAKE_C_FLAGS "" )

	#	debug
	#	release

	# special warning settings (google [test] sucks)
	#	common
	#	debug
	#	release

	# optimization settings
	#	common
	#	debug
	list( APPEND JSD_CMAKE_C_FLAGS_DEBUG "-g" )
	list( APPEND JSD_CMAKE_C_FLAGS_DEBUG "-ggdb3" )
	#	list( APPEND JSD_CMAKE_C_FLAGS_DEBUG "-Og" )
	list( APPEND JSD_CMAKE_C_FLAGS_DEBUG "-D_GLIBC_DEBUG" )
	list( APPEND JSD_CMAKE_C_FLAGS_DEBUG "-D_GLIBC_ASSERTIONS" )
	#	release
	list( APPEND JSD_CMAKE_C_FLAGS_RELEASE "-O3" )

	# analysis settings
	#	common
	#	debug
	#	release

	# language settings
	#	common
	list( APPEND JSD_CMAKE_C_FLAGS "-std=c2x" )
	#	debug
	#	release

	# security settings
	#	common
	#	debug
	#	release

	# additional stuff
	#	common
	#	debug
	#	release

	string( REPLACE ";" " " JSD_CMAKE_C_FLAGS_STR "${JSD_CMAKE_C_FLAGS}" )
	string( REPLACE ";" " " JSD_CMAKE_C_FLAGS_DEBUG_STR "${JSD_CMAKE_C_FLAGS_DEBUG}" )
	string( REPLACE ";" " " JSD_CMAKE_C_FLAGS_RELEASE_STR "${JSD_CMAKE_C_FLAGS_RELEASE}" )

	set( CMAKE_C_FLAGS "" )
	set( CMAKE_C_FLAGS_DEBUG "" )
	set( CMAKE_C_FLAGS_RELEASE "" )

	set( CMAKE_C_FLAGS ${JSD_CMAKE_C_FLAGS_STR} )
	set( CMAKE_C_FLAGS_DEBUG ${JSD_CMAKE_C_FLAGS_DEBUG_STR} )
	set( CMAKE_C_FLAGS_RELEASE ${JSD_CMAKE_C_FLAGS_RELEASE_STR} )

else()
	message( SEND_ERROR "[JSD] COMPILER SETTINGS: set-linux-compiler-settings.cmake is included while not on linux" )

endif()

JSD_CMAKE_CURRENT_FILE_OUT( "set-linux-compiler-settings.cmake" )
