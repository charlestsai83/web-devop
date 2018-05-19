#! /bin/bash

docker run -v $PWD:/workspace/ -p 5000:5000 -it web-devop:latest
