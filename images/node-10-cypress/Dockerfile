FROM circleci/node:10

ARG CYPRESS_VERSION

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
  build-essential\
  libcairo2-dev\
  libpango1.0-dev\
  libjpeg-dev\
  libgif-dev\
  librsvg2-dev

RUN yarn global add cypress@${CYPRESS_VERSION} && cypress verify