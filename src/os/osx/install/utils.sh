#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && source "../../utils.sh"

brew_install() {
  eval "brew install $1"
}
