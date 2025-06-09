#!/bin/bash

set -e

docker build --build-arg IDF_VER=v5.4.1 -t esp-idf-ubuntu20:v5.4.1 -f esp20.04.Dockerfile .

docker build \
  --build-arg IDF_VER=v5.4.1 \
  --build-arg IDF_TARGET=esp32 \
  --build-arg USER_ID=espidf \
  --build-arg TZ_ARG=Asia/Tokyo \
  -t micro-ros-docker .
