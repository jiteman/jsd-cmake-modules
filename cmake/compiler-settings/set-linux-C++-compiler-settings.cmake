include( ${JSD_CMAKE_PATH}/set-verbosity-configuration.cmake )

JSD_CMAKE_CURRENT_FILE_IN( "set-linux-compiler-settings.cmake" )

if ( UNIX )
	set( JSD_CMAKE_CXX_FLAGS "" )
	set( JSD_CMAKE_CXX_FLAGS_DEBUG "" )
	set( JSD_CMAKE_CXX_FLAGS_RELEASE "" )

	# C language

	# C++ language


	# warning settings
	#	common
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wall" ) # enable all warnings
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wextra" ) # enable extra warnings
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Werror" ) # treat warnings as errors
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wpedantic" )
	list( APPEND JSD_CMAKE_CXX_FLAGS "-pedantic-errors" ) #
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wformat=2" ) #
	list( APPEND JSD_CMAKE_CXX_FLAGS "-W" ) #
	#	debug
	#	release

	# special warning settings
	#	common
	# same as for C
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wundef" )
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wshadow" ) # declaration of '' shadows a member of ''
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wcast-qual" )
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wcast-align" )
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wwrite-strings" )
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wpointer-arith" )
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wconversion" )
	#	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wsign-compare" ) # [-Wextra]
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wmissing-declarations" ) # no previous declaration for ''
	#	list( APPEND JSD_CMAKE_CXX_FLAGS "-Waggregate-return" )
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Winline" )
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wno-error=inline" )
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wredundant-decls" )
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wno-long-long" )
	#	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wmissing-noreturn" )
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wno-missing-field-initializers" )
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wno-missing-braces" )
	#~same as for C
	# C++ specific
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wfloat-equal" )
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wmissing-format-attribute" )
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wunreachable-code" )
	#	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wno-format-nonliteral" )
	#	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wno-format-security" )
	#	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wdisabled-optimization" )
	#	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wpacked" )
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wno-reorder" )
	#	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wno-parentheses" )
	#	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wpadded" )
	list( APPEND JSD_CMAKE_CXX_FLAGS "--param large-stack-frame-growth=5000" )
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wshift-negative-value" )
	list( APPEND JSD_CMAKE_CXX_FLAGS "-Wshift-overflow=2" )
	#	list( APPEND JSD_CMAKE_CXX_FLAGS "-fno-delete-null-pointer-checks" )
	#	list( APPEND JSD_CMAKE_CXX_FLAGS "" )
	#	list( APPEND JSD_CMAKE_CXX_FLAGS "" )

	#	debug
	#	release

	# special warning settings (google [test] sucks)
	#	common
	#	debug
	#	release

	# optimization settings
	#	common
	list( APPEND JSD_CMAKE_CXX_FLAGS "-ffunction-sections" )
	list( APPEND JSD_CMAKE_CXX_FLAGS "-fdata-sections" )
	list( APPEND JSD_CMAKE_CXX_FLAGS "-fuse-ld=gold" ) # ld == 124s, gold == 36s, lld == 11s (lld does not work correctly with LTO)

	#	debug
	list( APPEND JSD_CMAKE_CXX_FLAGS_DEBUG "-g" )
	list( APPEND JSD_CMAKE_CXX_FLAGS_DEBUG "-ggdb3" )
	#	list( APPEND JSD_CMAKE_CXX_FLAGS_DEBUG "-Og" )
	list( APPEND JSD_CMAKE_CXX_FLAGS_DEBUG "-D_GLIBCXX_DEBUG" )
	list( APPEND JSD_CMAKE_CXX_FLAGS_DEBUG "-D_GLIBCXX_ASSERTIONS" )

	#	release
	list( APPEND JSD_CMAKE_CXX_FLAGS_RELEASE "-O3" )
	list( APPEND JSD_CMAKE_CXX_FLAGS_RELEASE "-flto" ) # link time code generation
	#	list( APPEND JSD_CMAKE_CXX_FLAGS "-finline-limit=600" ) # default ( 600 )
	#	list( APPEND JSD_CMAKE_CXX_FLAGS "--param max-inline-insns-single=300" ) # default ( n / 2 )
	#	list( APPEND JSD_CMAKE_CXX_FLAGS "--param max-inline-insns-auto=300" ) # default ( n / 2 )
	#	list( APPEND JSD_CMAKE_CXX_FLAGS "--param min-inline-insns=130" ) # default ( min( 130, n ) )
	#	list( APPEND JSD_CMAKE_CXX_FLAGS "--param max-inline-insns-rtl=600" ) # default ( n )

	#	list( APPEND JSD_CMAKE_CXX_FLAGS "--param inline-unit-growth=50" ) # default ( 50 )
	#	list( APPEND JSD_CMAKE_CXX_FLAGS "--param large-unit-insns=10000" ) # default ( 10000 )

	# analysis settings
	#	common
	#	debug
	#	release

	# language settings
	#	common
	list( APPEND JSD_CMAKE_CXX_FLAGS "-std=c++2b" )
	list( APPEND JSD_CMAKE_CXX_FLAGS "-fconcepts" ) # C++ Concepts are now supported
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

	string( REPLACE ";" " " JSD_CMAKE_CXX_FLAGS_STR "${JSD_CMAKE_CXX_FLAGS}" )
	string( REPLACE ";" " " JSD_CMAKE_CXX_FLAGS_DEBUG_STR "${JSD_CMAKE_CXX_FLAGS_DEBUG}" )
	string( REPLACE ";" " " JSD_CMAKE_CXX_FLAGS_RELEASE_STR "${JSD_CMAKE_CXX_FLAGS_RELEASE}" )

	set( CMAKE_CXX_FLAGS "" )
	set( CMAKE_CXX_FLAGS_DEBUG "" )
	set( CMAKE_CXX_FLAGS_RELEASE "" )

	set( CMAKE_CXX_FLAGS ${JSD_CMAKE_CXX_FLAGS_STR} )
	set( CMAKE_CXX_FLAGS_DEBUG ${JSD_CMAKE_CXX_FLAGS_DEBUG_STR} )
	set( CMAKE_CXX_FLAGS_RELEASE ${JSD_CMAKE_CXX_FLAGS_RELEASE_STR} )

else()
	message( SEND_ERROR "[JSD] COMPILER SETTINGS: set-linux-compiler-settings.cmake is included while not on linux" )

endif()

JSD_CMAKE_CURRENT_FILE_OUT( "set-linux-compiler-settings.cmake" )
