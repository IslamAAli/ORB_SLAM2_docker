#!/bin/bash

# Running Script for ORB-SLAM2 docker container

clear
echo "========================================================================================================="
echo "  ____             _                              ___  ____  ____       ____  _        _    __  __ ____  "
echo " |  _ \  ___   ___| | _____ _ __                 / _ \|  _ \| __ )     / ___|| |      / \  |  \/  |___ \ "
echo " | | | |/ _ \ / __| |/ / _ \ '__|  _____ _____  | | | | |_) |  _ \ ____\___ \| |     / _ \ | |\/| | __) |"
echo " | |_| | (_) | (__|   <  __/ |    |_____|_____| | |_| |  _ <| |_) |_____|__) | |___ / ___ \| |  | |/ __/ "
echo " |____/ \___/ \___|_|\_\___|_|                   \___/|_| \_\____/     |____/|_____/_/   \_\_|  |_|_____|"
echo "========================================================================================================="
echo "> MAINTAINER: Islam A. Ali <islam.a.mustafa@gmail.com>"
echo "> VERSION: 1.0"
echo "========================================================================================================="

                                                                                                         
docker run -it -v /home/shakeri/work_area/datasets/KITTI/data_odometry_gray/dataset/sequences/:/root/Dataset/ -p 5900:5900 -p 6099:6099 --rm islamaali/orbslam2-docker:v1.0 
