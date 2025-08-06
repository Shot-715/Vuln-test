FROM nginx:latest

RUN apt-get update && \
    apt-get install -y wget gnupg && \
    echo "deb [trusted=yes] http://archive.ubuntu.com/ubuntu bionic main universe" > /etc/apt/sources.list.d/bionic.list && \
    apt-get update && \
    apt-get install -y openssl=1.1.1-1ubuntu2.1~18.04.20 && \
    rm -rf /var/lib/apt/lists/*

