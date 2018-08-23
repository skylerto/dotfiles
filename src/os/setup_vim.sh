#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && source "utils.sh"

main() {
  declare -r VUNDLE_DIR="$HOME/.vim/plugins/Vundle.vim"
  declare -r VUNDLE_GIT_REPO_URL="https://github.com/gmarik/Vundle.vim.git"

  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  printf '\n' | nvim +PlugInstall +qall

}

main
