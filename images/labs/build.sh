#!/bin/bash

NAME=gigigo/labs
TAG=latest

echo "Building $NAME"
docker build -t ${NAME}:${TAG} .

# docker run --rm -it ${NAME}:${TAG} bash
docker push ${NAME}:${TAG}