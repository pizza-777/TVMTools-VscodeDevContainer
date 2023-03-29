#!/usr/bin/env bash

apt update 

chmod +x ./.devcontainer/ever_tools.sh 
./.devcontainer/ever_tools.sh

chmod +x ./.devcontainer/ton_tools.sh 
./.devcontainer/ton_tools.sh

/bin/bash