#! /bin/bash

CID=$(docker ps -f ancestor=web-devop -q)

docker stop $CID
docker rm $CID