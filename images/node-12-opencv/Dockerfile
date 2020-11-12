FROM node:12
WORKDIR /app

ARG OPENCV_VERSION

RUN apt-get update && apt-get install -y build-essential cmake && \
    yarn add opencv4nodejs@${OPENCV_VERSION} && \
    apt-get remove -y build-essential cmake && \ 
    apt-get autoremove -y

ENV OPENCV4NODEJS_DISABLE_AUTOBUILD=1