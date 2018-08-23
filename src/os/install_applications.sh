#!/bin/bash

main() {
  local os="$1"
  ./${os}/install/main.sh
}

main $1
