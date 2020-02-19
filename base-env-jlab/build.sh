#!/bin/bash

IMAGE_NAME=elenacuoco/base-env
IMAGE_VER=$(head -n1 version.txt)

docker info >/dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "FATAL : Unable to talk to the docker daemon"
    exit 3
fi

docker build -t ${IMAGE_NAME}:${IMAGE_VER} .
