#!/bin/bash

cd "$(dirname "$(realpath "$0")")"

./nightly/buildImage.sh

./testing/buildImage.sh

./stable/buildImage.sh
