#!/bin/sh

mkdir "$NVM_DIR" && curl -o- 'https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh' | \
  bash && . "$NVM_DIR/nvm.sh" && nvm install --lts && npm i -g npm && \
  npm i -g create-next-app create-react-app @nestjs/cli \
    nodemon localtunnel typescript npm-check-updates
