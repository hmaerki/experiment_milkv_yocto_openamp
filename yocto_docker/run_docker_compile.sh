#!/bin/bash

# https://github.com/kinsamanka/meta-milkv/tree/master

set -euox pipefail

docker buildx build --tag milkv .
docker run --rm -it -u `id -u`:`id -g` -v `pwd`/oe:/home/yocto/oe milkv bash
CONTAINER_ID=$(docker run -d milkv)
docker cp $CONTAINER_ID:/home/ubuntu/binaries.tgz binaries.tgz
docker container rm --force $CONTAINER_ID
