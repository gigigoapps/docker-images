#!/bin/bash

NAME=gigigo/labs
TAG=latest

echo "Building $NAME"
docker build -t ${NAME}:${TAG} .

docker push ${NAME}:${TAG}