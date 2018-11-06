
NAME=gigigo/node-8-cypress
TAG=3.1.1

echo "Building $NAME"
docker build -t ${NAME}:${TAG} .