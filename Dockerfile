FROM node

COPY vscode.deb .
RUN dpkg -i vscode.deb

WORKDIR /home/develop