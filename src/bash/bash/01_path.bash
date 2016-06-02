#!/bin/bash

# Homebrew
if [ -d /usr/local/bin ]; then
  export PATH=/usr/local/bin:$PATH
  export PATH=$PATH:/usr/local/sbin
fi

# NPM
if [ -d /usr/local/share/npm/bin ]; then
  export PATH=$PATH:/usr/local/share/npm/bin
fi

# Personal bin files
if [[ -d $HOME/.bin ]]; then
  export PATH=$HOME/.bin:$PATH
fi

export GOPATH=~/work

if [[ -d $GOPATH ]]; then
  PATH="$PATH:$GOPATH/bin"
fi

# Use gnu utils instead of os x
if [[ -d /usr/local/opt/coreutils/libexec/gnubin ]]; then
  MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
  PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH" 
fi

export PYTHONPATH=/usr/local/lib/python2.7/site-packages                        
export VAGRANT_DEFAULT_PROVIDER="vmware_fusion" 

export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date
"+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date
"+%Y-%m-%d").log; fi'
