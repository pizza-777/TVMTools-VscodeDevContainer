#Ubuntu version 22.04
FROM ubuntu:rolling

# Install Node.js and npm
RUN apt update && \   
    apt install -y nodejs && \
    apt install -y npm

RUN npm install -g everdev
RUN everdev sol update

RUN apt install wget
RUN wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_amd64.deb
RUN dpkg -i libssl1.1_1.1.0g-2ubuntu4_amd64.deb
RUN everdev tonos-cli install
ENV PATH="/root/.everdev/solidity:$PATH"

