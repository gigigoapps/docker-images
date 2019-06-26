#!/bin/bash

NAME=gigigo/node-10-cypress
TAG=3.8.0

echo "Building $NAME"
docker build -t ${NAME}:${TAG} --build-arg CYPRESS_VERSION=${TAG} .

docker push ${NAME}:${TAG}
