#!/bin/sh

curl --proto '=https' --tlsv1.2 -sSf 'https://sh.rustup.rs' |
  sh -s -- -y --no-modify-path && cargo install |
  lsd bat tealdeer git-delta cargo-update

install_autocomplete() {
  name=$1
  project_org=${2%/}
  ver_prefix=$3
  ver="$ver_prefix$($name --version | cut -f 2 -d ' ')"
  file="$name-$ver-x86_64-unknown-linux-gnu.tar.gz"
  down_url="$project_org/$name/releases/download/$ver/$file"
  dir=$(basename "$file" .tar.gz)
  autocomplete_path="$dir/${4:-autocomplete/_$name}"

  curl -LO "$down_url" && tar -zxvf "$file" && rm "$file" &&
    cp "$autocomplete_path" "$XDG_DATA_HOME/zsh/completions/_$name" &&
    rm -rf "$dir"
}

install_autocomplete 'lsd' 'https://github.com/Peltoche'
install_autocomplete 'bat' 'https://github.com/sharkdp' 'v' \
  'autocomplete/bat.zsh'
curl -Lo "$XDG_DATA_HOME/zsh/completions/_tldr" 'https://github.com/dbrgn/tealdeer/releases/download/v1.5.0/completions_zsh'
