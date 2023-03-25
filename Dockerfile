#Ubuntu version 22.04
FROM ubuntu:rolling

# Install Node.js and npm
RUN apt update && \   
    apt install -y nodejs && \
    apt install -y npm

# Install everdev, solc, tvm_linker
RUN npm install -g everdev@1.6.0 && \
    everdev sol set --compiler 0.65.0

# install tonos-cli
RUN apt install wget && \
    wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_amd64.deb && \
    dpkg -i libssl1.1_1.1.0g-2ubuntu4_amd64.deb && \
    everdev tonos-cli install

# make all tool executable
ENV PATH="/root/.everdev/solidity:$PATH"
