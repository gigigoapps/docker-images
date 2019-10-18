FROM circleci/python

RUN echo "deb http://packages.cloud.google.com/apt cloud-sdk-stretch main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add - && \
    sudo apt-get update && \
    sudo apt-get install google-cloud-sdk jq pv && \
    sudo pip install --upgrade awscli