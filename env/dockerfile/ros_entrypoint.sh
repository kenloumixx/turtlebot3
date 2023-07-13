#!/bin/zsh
export ROS_ROOT='/opt/ros/humble'
export ROS_DISTRO=humble
export LANG=en_US.UTF-8
export ROS_DOMAIN_ID=30
export ROS_LOCALHOST_ONLY=1
export TURTLEBOT3_MODEL=burger

echo 'ROS_DISTRO=humble' >> /root/.zshrc
echo 'ROS_ROOT=/opt/ros/humble' >> /root/.zshrc
echo 'source /opt/ros/humble/local_setup.zsh' >> /root/.zshrc
echo 'source ~/turtlebot_pkgs/install/local_setup.zsh' >> /root/.zshrc
echo 'export LANG=en_US.UTF-8' >> /root/.zshrc
echo 'export ROS_DOMAIN_ID=30' >> /root/.zshrc
echo 'export ROS_LOCALHOST_ONLY=1' >> /root/.zshrc
echo 'export TURTLEBOT3_MODEL=burger' >> /root/.zshrc

echo "ROS_ROOT   $ROS_ROOT"
echo "ROS_DISTRO $ROS_DISTRO"

echo 'export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp' >> /root/.zshrc
echo 'export GDK_SYNCHRONIZE=1' >> /root/.zshrc

exec "$@"