#!/bin/bash

NAME=gigigo/node-10-cypress
TAG=3.3.1

echo "Building $NAME"
docker build -t ${NAME}:${TAG} --build-arg CYPRESS_VERSION=${TAG} .

docker push ${NAME}:${TAG}
