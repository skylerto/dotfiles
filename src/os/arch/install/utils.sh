#!/bin/bash

# Adopted from /alrra/dotfiles

# - - - - -
# Command utils:
# - cmd_exists: check if a command exists
# - brew_installed: check if brew is installed
#
# - - - - -
pacman_install() {
  sudo pacman -Syy $1 --noconfirm
}

yaourt_install() {
  sudo yaourt -S $1 --noconfirm
}
