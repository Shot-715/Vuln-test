FROM nginx:latest

WORKDIR /tmp

# 必要ツールのインストール
RUN apt-get update && apt-get install -y wget gnupg libssl1.1

# 脆弱なOpenSSLを手動でダウンロードしてインストール
RUN wget http://security.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.1-1ubuntu2.1~18.04.20_amd64.deb && \
    dpkg -i openssl_1.1.1-1ubuntu2.1~18.04.20_amd64.deb || true && \
    rm -f openssl_1.1.1-1ubuntu2.1~18.04.20_amd64.deb

