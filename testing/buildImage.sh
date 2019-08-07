#/bin/sh
docker pull debian:stretch-slim
docker build --no-cache -t homegear/homegear:testing .
