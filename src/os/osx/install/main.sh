#!/bin/bash


cd "$(dirname "${BASH_SOURCE[0]}")" \
    && source "../../utils.sh" \
    && source "./utils.sh"

main() {

  # - - - - - - - - - -
  # INSTALL XCODE
  ./install_xcode.sh
  print_in_green "\n  ---\n\n"


  # - - - - - - - - - -
  # INSTALL HOMEBREW
  ./install_homebrew.sh
  #./update_and_upgrade.sh

  print_in_green "\n  ---\n\n"

  # - - - - - - - - - -
  # SETUP HOMEBREW INSTALLS
  brew_install "git"
  brew_install "ctags"
  brew_install "vim --override-system-vi"
  brew_install "tmux"
  brew_install "macvim"

}

main
