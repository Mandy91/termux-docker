build:
	docker build -t xeffyr/termux-docker:latest .

build-multiarch:
	DOCKER_CLI_EXPERIMENTAL=enabled docker buildx create --name termux-docker | true
	DOCKER_CLI_EXPERIMENTAL=enabled docker buildx use termux-docker
	DOCKER_CLI_EXPERIMENTAL=enabled docker buildx build -t mandy91/termux:arm64 . -f Dockerfile.aarch64 --load