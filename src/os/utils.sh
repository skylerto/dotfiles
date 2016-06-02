#!/bin/bash

# Adopted from /alrra/dotfiles

# - - - - -
# Command utils:
# - cmd_exists: check if a command exists
# - brew_installed: check if brew is installed
#
# - - - - -

cmd_exists() {
    command -v "$1" &> /dev/null
}

brew_installed() {
  cmd_exists "brew"
}



# - - - - -
# Print formatting

print_result() {
  if [ "$1" -eq 0 ]; then
      print_success "$2"
  else
      print_error "$2"
  fi
  return "$1"
}

# Color printers.
print_in_green() {
  printf "\e[0;32m%b\e[0m" "$1"
}
print_in_red() {
  printf "\e[0;31m%b\e[0m" "$1"
}

# Success
print_success() {
  print_in_green "  [✔] $1\n"
}

# Error
print_error() {
  print_in_red "  [✖] $1 $2\n"
}


