# Install script for directory: /home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/src/testing_package

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/install" TYPE PROGRAM FILES "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/build/testing_package/catkin_generated/installspace/_setup_util.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/install" TYPE PROGRAM FILES "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/build/testing_package/catkin_generated/installspace/env.sh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/install/setup.bash;/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/install" TYPE FILE FILES
    "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/build/testing_package/catkin_generated/installspace/setup.bash"
    "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/build/testing_package/catkin_generated/installspace/local_setup.bash"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/install/setup.sh;/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/install" TYPE FILE FILES
    "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/build/testing_package/catkin_generated/installspace/setup.sh"
    "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/build/testing_package/catkin_generated/installspace/local_setup.sh"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/install/setup.zsh;/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/install" TYPE FILE FILES
    "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/build/testing_package/catkin_generated/installspace/setup.zsh"
    "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/build/testing_package/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/install" TYPE FILE FILES "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/build/testing_package/catkin_generated/installspace/.rosinstall")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/testing_package/msg" TYPE FILE FILES "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/src/testing_package/msg/DronePos.msg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/testing_package/cmake" TYPE FILE FILES "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/build/testing_package/catkin_generated/installspace/testing_package-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/devel/.private/testing_package/include/testing_package")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/devel/.private/testing_package/share/roseus/ros/testing_package")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/devel/.private/testing_package/share/common-lisp/ros/testing_package")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/devel/.private/testing_package/share/gennodejs/ros/testing_package")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/home/gadzz/miniforge3/envs/ros_env/bin/python3.9" -m compileall "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/devel/.private/testing_package/lib/python3.9/site-packages/testing_package")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.9/site-packages" TYPE DIRECTORY FILES "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/devel/.private/testing_package/lib/python3.9/site-packages/testing_package")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/build/testing_package/catkin_generated/installspace/testing_package.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/testing_package/cmake" TYPE FILE FILES "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/build/testing_package/catkin_generated/installspace/testing_package-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/testing_package/cmake" TYPE FILE FILES
    "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/build/testing_package/catkin_generated/installspace/testing_packageConfig.cmake"
    "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/build/testing_package/catkin_generated/installspace/testing_packageConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/testing_package" TYPE FILE FILES "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/src/testing_package/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/testing_package" TYPE PROGRAM FILES "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/build/testing_package/catkin_generated/installspace/commander.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/testing_package" TYPE PROGRAM FILES "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/build/testing_package/catkin_generated/installspace/navigator.py")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/gadzz/Documents/Aksantara/ROS_OpenCV/Tugas1_py/build/testing_package/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
