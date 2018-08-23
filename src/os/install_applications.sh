#!/bin/bash

main() {
  local os="$1"
  echo "installing apps for ${os}"
  ./${os}/install/main.sh
}

main $1
