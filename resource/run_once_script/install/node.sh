#!/bin/sh

mkdir "$NVM_DIR" && curl -o- 'https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh' |
  bash && . "$NVM_DIR/nvm.sh" && nvm install --lts --latest-npm &&
  npm i -g create-next-app create-vite create-react-app @nestjs/cli \
    typescript ts-node nodemon localtunnel npm-check-updates
