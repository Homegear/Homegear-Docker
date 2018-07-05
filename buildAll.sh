#!/bin/bash

cd nightly
./buildImage.sh
cd ../testing
./buildImage.sh
cd ../stable
./buildImage.sh
cd ../rpi-nightly
./buildImage.sh
cd ../rpi-testing
./buildImage.sh
cd ../rpi-stable
./buildImage.sh

docker push homegear/homegear
docker push homegear/rpi-homegear
