#! /bin/bash
source configure

docker run -v $SOURCE_DIR:/workspace/ -p 5000:5000 -it web-devop:latest
