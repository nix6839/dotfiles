uncomment() {
  sudo sed -i "s/^#$1$/$1/" "$2"
}
