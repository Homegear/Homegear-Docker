#/bin/sh
docker pull arm32v7/debian:stretch-slim
docker build --no-cache -t homegear/rpi-homegear:testing .
