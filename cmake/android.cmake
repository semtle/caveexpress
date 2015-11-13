set(ROOT_DIR ${CMAKE_CURRENT_SOURCE_DIR})
set(ANDROID_ROOT ${ROOT_DIR}/android-project/)
set(MIN_ANDROID_SDK 10)
set(TARGET_ANDROID_SDK 13)

set(ANDROID_NDK_ROOT ${ANDROID_NDK})
set(ANDROID_SDK_ROOT $ENV{ANDROID_SDK})
set(ANDROID_SDK_BUILD_TOOLS_VERSION "22.0.1")
set(ANDROID_BUILD_TOOLS_ROOT ${ANDROID_SDK_ROOT}/build-tools/${ANDROID_SDK_BUILD_TOOLS_VERSION})
set(ANDROID_API "android-13" CACHE STRING "Android platform version")

if (${CMAKE_HOST_SYSTEM_NAME} STREQUAL "Darwin")
	set(ANDROID_NDK_HOST "darwin-x86_64")
elseif (${CMAKE_HOST_SYSTEM_NAME} STREQUAL "Linux")
	set(ANDROID_NDK_HOST "linux-x86_64")
elseif (${CMAKE_HOST_SYSTEM_NAME} STREQUAL "Windows")
	set(ANDROID_NDK_HOST "windows")
	set(ANDROID_NDK_EXE_EXT ".exe")
	set(ANDROID_SDK_TOOL_EXT ".bat")
endif()

set(ANDROID_SDK_TOOL "${ANDROID_SDK_ROOT}/tools/android${ANDROID_SDK_TOOL_EXT}")
set(ANDROID_NDK_TOOLCHAIN_BIN "${ANDROID_NDK_ROOT}/toolchains/${ANDROID_TOOLCHAIN_NAME}/prebuilt/${ANDROID_NDK_HOST}/bin")

if (NOT ANDROID_NDK_ROOT)
	message(FATAL_ERROR "ANDROID_NDK environment variable is not set")
endif()
if (NOT ANDROID_SDK_ROOT)
	message(FATAL_ERROR "ANDROID_SDK environment variable is not set")
endif()
message(STATUS "Android NDK root: ${ANDROID_NDK_ROOT}")
message(STATUS "Android SDK root: ${ANDROID_SDK_ROOT}")

if (RELEASE)
	set(ANT_TARGET release)
	set(ANT_INSTALL_TARGET installr)
	set(MANIFEST_DEBUGGABLE false)
else()
	set(ANT_TARGET debug)
	set(ANT_INSTALL_TARGET installd)
	set(MANIFEST_DEBUGGABLE true)
endif()

# find the ant tool
find_host_program(ANDROID_ANT ant)
if (ANDROID_ANT)
	message(STATUS "ant tool found")
else()
	message(FATAL_ERROR "ant tool not found in path!")
endif()

find_host_program(JARSIGNER "jarsigner")

find_host_program(ANDROID_ZIPALIGN "zipalign" HINTS ${ANDROID_SDK_ROOT}/tools)
if (ANDROID_ZIPALIGN)
	message(STATUS "zipalign tool found")
else()
	set(ANDROID_ZIPALIGN ${ANDROID_BUILD_TOOLS_ROOT}/zipalign)
	message(STATUS "could not find zipalign in path - use ${ANDROID_ZIPALIGN}")
endif()

option(HD_VERSION "Build the HD versions of the games" OFF)
set(PERMISSIONS)
set(META_DATA)
set(ANDROID_REFERENCED_LIBS android.library.reference.1=google-play-services_lib)
set(TOOLS OFF)
set(USE_BUILTIN ON)
set(ANDROID_ADB adb)
list(APPEND PERMISSIONS "<uses-permission android:name=\"com.android.vending.BILLING\" />")

if (NOT HD_VERSION)
	list(APPEND META_DATA "<meta-data android:value=\"true\" android:name=\"ADMOB_ALLOW_LOCATION_FOR_ADS\" />")
	message(STATUS "Don't build HD version")
else()
	message(STATUS "Build HD version")
endif()
list(APPEND META_DATA "<meta-data android:name=\"com.google.android.gms.games.APP_ID\" android:value=\"@string/app_id\" />")
list(APPEND META_DATA "<meta-data android:name=\"com.google.android.gms.appstate.APP_ID\" android:value=\"@string/app_id\" />")
list(APPEND META_DATA "<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />")

set(DEBUG_KEYSTORES "$ENV{HOME}/.android/debug.keystore" "$ENV{HOMEPATH}/.android/debug.keystore")
foreach(DEBUG_KEYSTORE ${DEBUG_KEYSTORES})
	if (EXISTS ${DEBUG_KEYSTORE})
		set(ANDROID_DEBUG_KEYSTORE ${DEBUG_KEYSTORE})
	endif()
endforeach()
set(ANDROID_DEBUG_ALIAS androiddebugkey)
set(ANDROID_DEBUG_STOREPASS android)
set(ANDROID_DEBUG_KEYPASS android)

set(ANDROID_RELEASE_KEYSTORE $ENV{CAVEPRODUCTIONS_KEYSTORE_PATH})
set(ANDROID_RELEASE_ALIAS CaveProductions)
set(ANDROID_RELEASE_STOREPASS $ENV{CAVEPRODUCTIONS_KEYSTORE_PASSWD})
set(ANDROID_RELEASE_KEYPASS $ENV{CAVEPRODUCTIONS_ALIAS_PASSWD})

if (RELEASE)
	if (NOT DEFINED ENV{CAVEPRODUCTIONS_KEYSTORE_PASSWD})
		message(FATAL_ERROR "No keystore password set")
	endif()
	if (NOT DEFINED ENV{CAVEPRODUCTIONS_KEYSTORE_PATH})
		message(FATAL_ERROR "No keystore path set")
	endif()
	set(ANDROID_KEYSTORE ${ANDROID_RELEASE_KEYSTORE})
	set(ANDROID_ALIAS ${ANDROID_RELEASE_ALIAS})
	set(ANDROID_STOREPASS ${ANDROID_RELEASE_STOREPASS})
	set(ANDROID_KEYPASS ${ANDROID_RELEASE_KEYPASS})
else()
	set(ANDROID_KEYSTORE ${ANDROID_DEBUG_KEYSTORE})
	set(ANDROID_ALIAS ${ANDROID_DEBUG_ALIAS})
	set(ANDROID_STOREPASS ${ANDROID_DEBUG_STOREPASS})
	set(ANDROID_KEYPASS ${ANDROID_DEBUG_KEYPASS})
endif()

if (VERBOSE)
	set(ANT_FLAGS -v)
endif()

add_definitions(-DGL_GLEXT_PROTOTYPES)

set(CMAKE_C_STANDARD_LIBRARIES "-ldl -landroid -llog -lm -lz -lc -lgcc")
set(CMAKE_CXX_STANDARD_LIBRARIES "${CMAKE_C_STANDARD_LIBRARIES}")
