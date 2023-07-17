# Interactive Turtlebot
## Build docker container 
```bash
$ cd turtlebot3/enc
$ scripts/docker_build.sh
$ scripts/docker_run.sh
```
---
## Run docker container - Navigation
[ Terminal A ]
```bash
// outside the container
$ docker exec -it turtle3 zsh

// inside the container
$ ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py
```

[ Terminal B ]
```bash
// outside the container
$ docker exec -it turtle3 zsh

// inside the container
$ cd /workspace 
$ ros2 launch turtlebot3_navigation2 navigation2.launch.py use_sim_time:=True map:=/root/turtlebot_pkgs/src/turtlebot3/turtlebot3_navigation2/map/map.yaml
```
---
## To Do

---
turtlebot packages are from 