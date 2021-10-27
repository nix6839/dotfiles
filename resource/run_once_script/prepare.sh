#!/bin/sh

. "$CHEZMOI_UTIL_PATH/uncomment.sh"

uncomment 'Color' '/etc/pacman.conf'
uncomment 'VerbosePkgLists' '/etc/pacman.conf'
uncomment 'ParallelDownloads = 5' '/etc/pacman.conf'

dirname "$LESSKEY" "$LESSHISTFILE" | xargs -L 1 mkdir -p
dirname "$NODE_REPL_HISTORY" | xargs mkdir -p
mkdir -p "$GNUPGHOME" && chmod 700 "$GNUPGHOME"
