
NAME=gigigo/node-8-cypress
TAG=3.1.3

echo "Building $NAME"
docker build -t ${NAME}:${TAG} .

# docker push ${NAME}:${TAG}