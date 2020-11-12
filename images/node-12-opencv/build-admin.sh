#!/bin/bash

NAME=gigigo/node-12-opencv
TAG=5.6.0

echo "Building $NAME"

auth=$(aws secretsmanager get-secret-value --secret-id cicd | jq -r ".SecretString" | jq -r ".docker_auth")
docker login \
  -u $(echo $auth | cut -d: -f1) \
  -p $(echo $auth | cut -d: -f2)
  
docker build -t ${NAME}:${TAG} --build-arg OPENCV_VERSION=${TAG} .

docker push ${NAME}:${TAG}
