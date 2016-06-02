#!/bin/bash


cd "$(dirname "${BASH_SOURCE[0]}")" \
    && source "../../utils.sh"

# - - - - -
# Install Homebrew if not already installed
# - - - - -
main() {

  if ! brew_installed; then
    printf "\n" | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" &> /dev/null
  else
    printf "Brew already installed\n"
  fi

  print_result $? "brew"


  # Need brew for the reset
  [ $? -ne 0 ] \
    && exit 0

}

main
