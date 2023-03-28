#!/usr/bin/env bash
working_dir=$PWD

#tvm-asm
git clone https://github.com/tonlabs/ever-assembler.git /tmp/ever-assembler
cd /tmp/ever-assembler 
cargo build --release
mv /tmp/ever-assembler/target/release/asm /usr/bin/tvm-asm
rm -r /tmp/ever-assembler
cd $working_dir
