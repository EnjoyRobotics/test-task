cmake_minimum_required(VERSION 3.8)
project(simulation_bringup)

find_package(ament_cmake REQUIRED)

install(DIRECTORY
  launch/
  DESTINATION ${CMAKE_INSTALL_PREFIX}/share/${PROJECT_NAME}/launch
)

ament_package()
