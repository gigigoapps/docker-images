#!/bin/bash

NAME=gigigo/node-12-opencv
TAG=5.6.0

echo "Building $NAME"
docker build -t ${NAME}:${TAG} --build-arg OPENCV_VERSION=${TAG} .

docker push ${NAME}:${TAG}
