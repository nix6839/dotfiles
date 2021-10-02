#!/bin/sh
curl --proto '=https' --tlsv1.2 -sSf 'https://sh.rustup.rs' | sh -s -- \
  -y --no-modify-path && rm -f "$CARGO_HOME/env" && \
  cargo install lsd bat silicon cargo-update

install_autocomplete() {
  name=$1
  project_org=${2%/}
  ver_prefix=$3
  ver="$ver_prefix$($name --version | cut -f 2 -d ' ')"
  file="$name-$ver-x86_64-unknown-linux-gnu.tar.gz"
  down_url="$project_org/$name/releases/download/$ver/$file"
  dir=$(basename "$file" .tar.gz)
  autocomplete_path="$dir/${4:-autocomplete/_$name}"

  curl -LO "$down_url" && tar -zxvf "$file" && rm "$file" && \
    sudo cp "$autocomplete_path" "/usr/share/zsh/site-functions/_$name" && \
    rm -rf "$dir"
}

install_autocomplete 'lsd' 'https://github.com/Peltoche'
install_autocomplete 'bat' 'https://github.com/sharkdp' 'v' 'autocomplete/bat.zsh'
