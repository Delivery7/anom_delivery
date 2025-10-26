#!/bin/bash

# Launch Gazebo
gnome-terminal --tab -- bash -c "ros2 launch anom_bringup bringup.launch.py;
                                 echo Press any key to close;
                                 read -n 1"

# Launch Navigation
# gnome-terminal --tab -- bash -c "source install/setup.bash;
#                                  ros2 launch robot_properties nav2_def.launch.py;
#                                  echo Press any key to close;
#                                  read -n 1"

# gnome-terminal --tab -- bash -c "source install/setup.bash;
#                                  ros2 launch robot_properties localization_launch.py;
#                                  echo Press any key to close;
#                                  read -n 1"

gnome-terminal --tab -- bash -c "ros2 launch anom_navigation slam.launch.py rviz:=true;
                                echo Press any key to close;
                                read -n 1"
# Wait a bit to make sure everything loads
sleep 3

# Launch RViz with custom config

# gnome-terminal --tab -- bash -c "source install/setup.bash ; ros2 launch robot_properties localization_launch.py; echo Press any key to close; read -n 1"
