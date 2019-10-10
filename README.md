# Termux environment for Docker.

A [Termux](https://termux.com) legacy (Android API 21) i686 environment
packaged into Docker image. Environment doesn't have Android runtime
components, so certain things will not run (Java, OpenSLES, etc...).

## How to use

1. Make sure that Docker is installed and running.
2. `git clone -b legacy/i686 https://github.com/xeffyr/termux-docker && cd ./termux-docker`
3. `./run.sh`

You can use the image directly without startup script. For example:
```
docker run -it xeffyr/termux:i686-legacy
```
