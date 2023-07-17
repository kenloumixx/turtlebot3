#!/usr/bin/env bash

docker run --name turtle-humble -d -it -e "ACCEPT_EULA=Y" --ipc=host --privileged --network=host \
-v $(pwd)/../:/workspace:rw \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=$DISPLAY \
-v $HOME/.Xauthority:/root/.Xauthority:rw \
desktop_ros2_4