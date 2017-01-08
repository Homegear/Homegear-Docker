#/bin/sh
docker build --no-cache -t homegear/homegear:nightly .
docker tag homegear/homegear:nightly homegear/homegear:latest
