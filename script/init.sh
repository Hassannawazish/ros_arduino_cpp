mkdir -p ~/ros2_ws/src
cd ~/ros2_ws
colcon build
cd src
source /opt/ros/humble/setup.bash
ros2 pkg create --build-type ament_python robot_py
ros2 pkg create --build-type ament_cmake robot_cpp
cd ..
colcon build
. install/setup.bash
ros2 pkg list
