#!/bin/sh

mkdir "$NVM_DIR" && curl -o- 'https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh' |
  bash && . "$NVM_DIR/nvm.sh" && nvm install --lts --latest-npm &&
  corepack prepare pnpm@7.8.0 --activate && pnpm i -g create-next-app \
  create-vite create-turbo @nestjs/cli typescript ts-node nodemon localtunnel \
  npm-check-updates sort-package-json
