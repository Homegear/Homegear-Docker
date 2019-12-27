#!/bin/bash

cd nightly
./buildImage.sh

cd ../testing
./buildImage.sh

cd ../stable
./buildImage.sh
