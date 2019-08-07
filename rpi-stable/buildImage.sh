#/bin/sh
docker pull arm32v7/debian:stretch-slim
docker build --no-cache -t homegear/rpi-homegear:stable .
docker tag homegear/rpi-homegear:stable homegear/rpi-homegear:latest
version=$(docker run -it -e GET_VERSION=1 homegear/rpi-homegear:stable | head -1 | cut -d " " -f 3 | cut -d "-" -f 1)
if [ $? -ne 0 ]; then
	docker rmi -f homegear/homegear:stable
	docker rmi -f homegear/homegear:latest
	exit 1
fi
docker tag homegear/rpi-homegear:stable homegear/rpi-homegear:${version}
