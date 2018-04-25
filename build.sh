#! /bin/bash

wget -nc -O vscode.deb https://vscode.cdn.azure.cn/stable/3aeede733d9a3098f7b4bdc1f66b63b0f48c1ef9/code_1.22.2-1523551015_amd64.deb
docker build -t web-devop:latest -f Dockerfile .