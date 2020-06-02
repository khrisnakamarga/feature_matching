# Feature Detection

Author: Khrisna Kamarga

## Description

The goal of this project is to provide an easy platform for developers to get started with feature matching in OpenCV. This repository is complete with a Dockerfile which creates the environment needed to compile and run this project.

## Prerequisites

- OpenCV 3.1
- Docker
- Docker compose
- CMake
- Two images to be compared

## Instructions

### Compilation

1. Create a build directory `mkdir build`
2. Navigate inside the build directory `cd build`
3. Initiate the CMake build process `cmake ..`
4. Invoke make `make -j4` (the number 4 can be replaced with the result of `nproc`)
5. The build directory will be populated with `feature_detection` which is the executable

### Running the Feature Detector

1. Follow the compilation process
2. In the build directory, run the image paths as the command arguments: `./feature_detection image1 image2`
3. There will be 3 windows visualizing the features detected

### Using Docker

1. Build the container `docker-compose build`
2. Run the container `docker-compose up`
3. If the terminal doesn't allow you to enter the container, manually attach by opening
   a new terminal, then running `docker attach feature-detection` (might need sudo)
4. The container is ready for the previous instructions
5. If you'd like to copy images from your host computer to the docker container, do
   `docker cp <image_path> feature_detection:<where you'd like to copy to inside the container>`

### Getting images from the host to the container

1. Create a folder in the repository called: `images`
2. Put your images there and it'll show up in the container inside /root/feature_detection/images

### If the display is showing errors

Run `xhost local:root` in the host computer

## GOODLUCK!
