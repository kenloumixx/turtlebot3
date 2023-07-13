#!/usr/bin/env bash

docker run --name desktop-ros2-humble-new-4 -d -it --rm -e "ACCEPT_EULA=Y" --ipc=host --privileged --network=host \
-v $(pwd)/../:/workspace:rw \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=$DISPLAY \
-v $HOME/.Xauthority:/root/.Xauthority:rw \
desktop_ros2_4