#/bin/sh
docker buildx build --no-cache --progress plain --platform linux/amd64,linux/arm64,linux/arm/v7 --tag homegear/homegear:testing --push .
