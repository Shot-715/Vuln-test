FROM nginx:latest

# 脆弱な openssl を入れる
RUN apt-get update && \
    apt-get install -y wget gnupg && \
    echo "deb [trusted=yes] http://old-releases.ubuntu.com/ubuntu bionic main universe" > /etc/apt/sources.list.d/bionic.list && \
    apt-get update && \
    apt-get install -y openssl=1.1.1-1ubuntu2.1~18.04.20 || true && \
    rm -rf /var/lib/apt/lists/*

