#!/usr/bin/env bash

apt update 

working_dir=$PWD
cd /tmp

# Install everdev, solc, tvm_linker, tvm-asm
npm install -g everdev@1.6.0 && \
    everdev sol set --compiler 0.65.0

# install tonos-cli
apt install wget && \
    wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_amd64.deb && \
    dpkg -i libssl1.1_1.1.0g-2ubuntu4_amd64.deb && \
    everdev tonos-cli install

#tvm-asm
git clone https://github.com/tonlabs/ever-assembler.git /tmp/ever-assembler
cd /tmp/ever-assembler 
cargo build --release
mv /tmp/ever-assembler/target/release/asm /usr/bin/tvm-asm
rm -r /tmp/ever-assembler
cd $working_dir

# make all tool executable
PATH="/root/.everdev/solidity:$PATH"
