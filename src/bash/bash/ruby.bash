#!/bin/bash

if [[ -r /usr/local/share/chruby/chruby.sh && -z $SHOPIFY_DEV_VAGRANT ]]; then
  source /usr/local/share/chruby/chruby.sh
  RUBIES=(~/.rubies/*)

  # switch to latest stable
  chruby 2.2

  source /usr/local/share/chruby/auto.sh
fi
