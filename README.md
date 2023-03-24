# Everscale tools with docker

- everdev
- tonos-cli
- solc
- tvm_linker

## Build from Dockerfile

```bash
docker build -t evertools ./
```

## Run

```bash
docker run -it -v "$(pwd)/app":/home evertools sh -c "cd /home && /bin/bash"
```

```"$(pwd)/app"``` is path to your working directory
