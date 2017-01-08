#/bin/sh
docker build --no-cache -t homegear/homegear:stable .
docker tag homegear/homegear:nightly homegear/homegear:latest
