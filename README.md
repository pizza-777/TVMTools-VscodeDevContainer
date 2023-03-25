# Everscale tools with docker

- [everdev](https://github.com/tonlabs/everdev)
- [tonos-cli](https://github.com/tonlabs/tonos-cli)
- [solc](https://github.com/tonlabs/TON-Solidity-Compiler)
- [tvm_linker](https://github.com/tonlabs/TVM-linker)
- [everscale.solidity-support extension](https://marketplace.visualstudio.com/items?itemName=everscale.solidity-support) for vscode

## Build from Dockerfile

```bash
docker build -t evertools ./.devcontainer
```

## Run

```bash
docker run -it -v "$(pwd)/app":/home evertools sh -c "cd /home && /bin/bash"
```

```"$(pwd)/app"``` is example path to your application directory

## Run all of this and vscode with everscale.solidity-support extension in a docker

1. Install [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension

2. Put folder `.devcontainer` in the root of your project. Configure `devcontainer.json` file if needed

3. In the Command Palette run something like this `"Dev Containers: Rebuild Container"`