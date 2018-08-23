#!/bin/bash


cd "$(dirname "${BASH_SOURCE[0]}")" \
    && source "../../utils.sh"

main() {

  # - - - - - - - - - -
  # INSTALL XCODE

  # - - - - - - - - - -
  # INSTALL HOMEBREW
  print_in_green "\n  ---\n\n"

  # - - - - - - - - - -
  # install pacman software
  pacman_install

  declare -a packages=("git")

  ## now loop through the above array
  for pkg in "${packages[@]}"
  do
     pacman_install $i
  done

  # - - - - - - - - - -
  # Install yaourt Software
  yaourt_install

  declare -a packages=("albert" "neovim")

  ## now loop through the above array
  for pkg in "${packages[@]}"
  do
     yaourt_install $i
  done


}

main