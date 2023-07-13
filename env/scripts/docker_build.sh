#!/usr/bin/env bash

INTERMEDIATE_IMAGE1="desktop_ros2_inter_4"
FINAL_IMAGE="desktop_ros2_4"

echo "Building desktop_ros2 image..."

# build basic isaac_ros
docker build -t $INTERMEDIATE_IMAGE1 -f ./dockerfile/Dockerfile.jammy .

docker build -t $FINAL_IMAGE -f ./Dockerfile.devenv --build-arg BASE_IMAGE=$INTERMEDIATE_IMAGE1 .
docker image rm $INTERMEDIATE_IMAGE1