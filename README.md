# Termux environment for Docker.

A [Termux](https://termux.com) x86_64 environment packaged into Docker image.
Environment doesn't have Android runtime components, so certain things will
not run (Java, OpenSLES, etc...).

## How to use

1. Make sure that Docker is installed and running.
2. `git clone -b x86_64 https://github.com/xeffyr/termux-docker && cd ./termux-docker`
3. `./run.sh`

You can use the image directly without startup script. For example:
```
docker run -it xeffyr/termux:x86_64
```
