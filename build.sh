#! /bin/bash

NODE_VERSION=v8.11.1
NODE=node-$NODE_VERSION-linux-x64
wget -nc -O tmp/node.tar.xz https://nodejs.org/dist/$NODE_VERSION/$NODE.tar.xz

docker build --build-arg NODE_VER=$NODE -t web-devop:latest -f Dockerfile .
