#---------------------------------------------------------------------------------------
# Get livox_ros_driver2 version from include/livox_ros_driver2.h
#---------------------------------------------------------------------------------------
file(READ "${CMAKE_CURRENT_LIST_DIR}/../src/include/livox_ros_driver2.h" livox_ros_driver2_VERSION_FILE)
string(REGEX MATCH "livox_ros_driver2_VER_MAJOR ([0-9]+)" _  "${livox_ros_driver2_VERSION_FILE}")
set(ver_major ${CMAKE_MATCH_1})

string(REGEX MATCH "livox_ros_driver2_VER_MINOR ([0-9]+)" _  "${livox_ros_driver2_VERSION_FILE}")
set(ver_minor ${CMAKE_MATCH_1})
string(REGEX MATCH "livox_ros_driver2_VER_PATCH ([0-9]+)" _  "${livox_ros_driver2_VERSION_FILE}")
set(ver_patch ${CMAKE_MATCH_1})

if (NOT DEFINED ver_major OR NOT DEFINED ver_minor OR NOT DEFINED ver_patch)
    message(FATAL_ERROR "Could not extract valid version from include/livox_ros_driver2.h")
endif()
set (livox_ros_driver2_VERSION "${ver_major}.${ver_minor}.${ver_patch}")
