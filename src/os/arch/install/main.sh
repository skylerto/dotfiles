#!/bin/bash


cd "$(dirname "${BASH_SOURCE[0]}")" \
    && source "../../utils.sh" \
    && source "./utils.sh"

main() {

  # - - - - - - - - - -
  # INSTALL XCODE

  # - - - - - - - - - -
  # INSTALL HOMEBREW
  print_in_green "\n  ---\n\n"

  # - - - - - - - - - -
  # install pacman software

  declare -a packages=("git")

  ## now loop through the above array
  for pkg in "${packages[@]}"
  do
     pacman_install $pkg
  done

  # - - - - - - - - - -
  # Install yaourt Software
  yaourt_install

  declare -a packages=("albert" "compton" "polybar" "neovim" "python2" "python" "python2-pip" "python-pip" "ttf-google-fonts-git" "neofetch")

  ## now loop through the above array
  for pkg in "${packages[@]}"
  do
     yaourt_install $pkg
  done


}

main
