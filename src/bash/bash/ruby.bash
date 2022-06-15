#!/bin/bash

if [[ -r /usr/local/share/chruby/chruby.sh ]]; then
  source /usr/local/share/chruby/chruby.sh
  #RUBIES=(~/.rubies/*)
  #source /usr/local/share/chruby/auto.sh
fi

# chruby 2.7
chruby 3.1.2 

# export GEM_HOME=$HOME/.gem
# export GEM_PATH=$HOME/.gem

