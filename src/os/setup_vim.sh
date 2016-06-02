#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && source "utils.sh"

main() {
  declare -r VUNDLE_DIR="$HOME/.vim/plugins/Vundle.vim"
  declare -r VUNDLE_GIT_REPO_URL="https://github.com/gmarik/Vundle.vim.git"

  execute \
    "rm -rf '$VUNDLE_DIR' \
        && git clone --quiet '$VUNDLE_GIT_REPO_URL' '$VUNDLE_DIR' \
        && printf '\n' | vim +PluginInstall +qall" \
    "Install Vim plugins"

}

main
