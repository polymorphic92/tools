FROM alpine
RUN apk add \
    busybox-extras \
    git \
    curl \
    netcat-openbsd \
    bash \
    fish \
    perl \
    python3 \
    py3-pip \
    neovim \
    ripgrep \
    fzf \
    jq \
    yq \
    dog \
    openssh \
    nmap \
    tcpdump \
    fd \
    openssh \
    gpg \
    bat && \
    rm -rf /var/cache/apk/*
# Download and install kubectl
RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x kubectl && \ 
    mv kubectl /usr/local/bin/
