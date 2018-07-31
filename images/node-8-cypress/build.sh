
NAME=gigigo/node-8-cypress
TAG=3.0.3

echo "Building $NAME"
docker build -t ${NAME}:${TAG} .