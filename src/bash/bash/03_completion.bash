#!/bin/bash

# if [[ -d /usr/local/etc/bash_completion.d ]]; then
#   for file in /usr/local/etc/bash_completion.d/*; do
#     source $file
#   done
# fi
#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#  . $(brew --prefix)/etc/bash_completion
#fi

if [[ -d /etc/bash_completion.d ]]; then
  for file in /etc/bash_completion.d/*; do
    source $file
  done
fi
