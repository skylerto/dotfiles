#!/bin/bash

# Adopted from /alrra/dotfiles

# - - - - -
# Command utils:
# - cmd_exists: check if a command exists
# - brew_installed: check if brew is installed
#
# - - - - -
pacman_install() {
  local pkg="$1"
  print_info "Installing ${pkg}"
  sudo pacman -Sy $pkg --noconfirm
  print_success "Installed ${pkg}"
}

yaourt_install() {
  local pkg="$1"
  print_info "Installing ${pkg}"
  sudo yaourt -S $pkg --noconfirm
  print_success "Installed ${pkg}"
}
