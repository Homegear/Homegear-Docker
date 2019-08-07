#/bin/sh
docker pull arm32v7/debian:stretch-slim
docker build --no-cache -t homegear/rpi-homegear:stable .
docker tag homegear/rpi-homegear:stable homegear/rpi-homegear:latest
