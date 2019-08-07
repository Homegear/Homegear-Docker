#/bin/sh
docker pull debian:stretch-slim
docker build --no-cache -t homegear/homegear:stable .
docker tag homegear/homegear:stable homegear/homegear:latest
