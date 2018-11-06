FROM circleci/node:8

ENV PATH="/home/circleci/.yarn/bin:${PATH}"

RUN sudo apt-get update && \
  sudo apt-get install -y \
  libgtk2.0-0 \
  libnotify-dev \
  libgconf-2-4 \
  libnss3 \
  libxss1 \
  libasound2 \
  xvfb \
  libcairo2-dev \
  libjpeg-dev \
  libpango1.0-dev \
  libgif-dev \
  build-essential \
  g++

RUN yarn global add cypress@3.1.1 && cypress verify