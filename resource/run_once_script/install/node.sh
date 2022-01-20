#!/bin/sh

curl https://get.volta.sh | bash -s -- --skip-setup && volta install node && \
  npm install -g typescript create-react-app nodemon
