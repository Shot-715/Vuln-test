FROM nginx:latest

WORKDIR /tmp

RUN apt-get update && apt-get install -y wget gnupg

# 脆弱な libssl1.1 を Ubuntu から手動で取得してインストール
RUN wget http://security.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2_amd64.deb && \
    dpkg -i libssl1.1_1.1.1f-1ubuntu2_amd64.deb || true

RUN ldconfig && dpkg -l | grep libssl

