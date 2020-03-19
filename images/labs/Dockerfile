FROM circleci/python

# gcloud jq pv kubectl
RUN echo "deb http://packages.cloud.google.com/apt cloud-sdk-stretch main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
    echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add - && \
    sudo apt-get update && \
    sudo apt-get install google-cloud-sdk jq pv kubectl

# aws-cli
RUN sudo pip install --upgrade awscli

# doctl
RUN cd ~; curl -sL https://github.com/digitalocean/doctl/releases/download/v1.38.0/doctl-1.38.0-linux-amd64.tar.gz | tar -xzv && \
sudo mv ~/doctl /usr/local/bin

#helm
RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash

# yq
RUN cd ~; curl -L -o yq  https://github.com/mikefarah/yq/releases/download/3.1.1/yq_linux_amd64; \
chmod +x yq; \
sudo mv yq /usr/local/bin