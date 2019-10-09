#!/usr/bin/env bash

CONTAINER_NAME="termux"
DOCKER_IMAGE_NAME="xeffyr/termux:latest"

docker start "$CONTAINER_NAME" > /dev/null 2> /dev/null || {
	echo "Creating new container..."
	docker run \
		--detach \
		--name "$CONTAINER_NAME" \
		--tty \
		"$DOCKER_IMAGE_NAME"
}

docker exec --interactive --tty "$CONTAINER_NAME" \
	/data/data/com.termux/files/usr/bin/login
