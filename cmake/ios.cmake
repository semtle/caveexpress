include(BundleUtilities)

option(HD_VERSION "Build the HD versions of the games" OFF)
set(UNITTESTS OFF)
set(TOOLS OFF)
set(USE_BUILTIN ON)
set(IOS_PROVISIONG_PROFILES_DIR "$ENV{HOME}/Library/MobileDevice/Provisioning Profiles/")
set(CMAKE_MACOSX_BUNDLE YES)
set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGNING_REQUIRED "NO")
