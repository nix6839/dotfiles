#!/bin/sh

xargs -L 1 code --install-extension < \
  "$CHEZMOI_RESOURCE_PATH/code-extensions.list"
