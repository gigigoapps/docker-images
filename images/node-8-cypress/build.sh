#!/bin/bash

NAME=gigigo/node-8-cypress
TAG=4.6.0

echo "Building $NAME"
docker build -t ${NAME}:${TAG} --build-arg CYPRESS_VERSION=${TAG} .

docker push ${NAME}:${TAG}
