
NAME=gigigo/node-8-cypress
TAG=3.0.2

echo "Building $NAME"
docker build -t ${NAME}:${TAG} .