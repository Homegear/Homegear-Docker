#/bin/sh
cd $(dirname "$(realpath "$0")")/../
docker buildx build -f testing/Dockerfile --no-cache --platform linux/amd64,linux/arm64,linux/arm/v7 --tag homegear/homegear:testing --push .
