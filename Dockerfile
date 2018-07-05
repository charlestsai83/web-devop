FROM ubuntu:16.04

ARG NODE_VER

RUN apt update

RUN apt install -y python3-dev python3-pip
RUN apt install -y sqlite3

WORKDIR /workspace

COPY tmp/node.tar.xz /home/.

RUN tar -xf /home/node.tar.xz -C /home/
RUN mkdir -p /home/develop
RUN mv /home/${NODE_VER} /home/develop/node
RUN rm -f /home/node.tar.xz
# RUN echo "PATH=/home/develop/node/bin:$PATH" >> /root/.bashrc
RUN ln -s /home/develop/node/bin/node /usr/local/bin/.
RUN ln -s /home/develop/node/bin/npm /usr/local/bin/.

RUN ls /usr/local/bin
RUN npm i npm@latest -g
# ENTRYPOINT ["/home/develop/node/bin/node", "/workspace/app.js"]
