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
export PATH=$PATH:/Users/skylerl/.chefdk/gem/ruby/2.1.0/bin

if [[ -d $GOPATH ]]; then
  PATH="$GOPATH/bin:$PATH"
fi

export PATH=$(npm bin):$PATH

# Use gnu utils instead of os x
# if [[ -d /usr/local/opt/coreutils/libexec/gnubin ]]; then
#   MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
#   PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
# fi

export VAGRANT_DEFAULT_PROVIDER="virtualbox"

export PATH=$PATH:/usr/local/Cellar/ruby/2.3.1/bin

export PATH=~/.bin/:$PATH
export PATH=$HOME/node/bin:$PATH

#export NVM_DIR="$HOME/.nvm"
#. "/usr/local/opt/nvm/nvm.sh"

export PATH=$PATH:~/.bin/sonarqube/bin/macosx-universal-64
export PATH=$PATH:~/.bin/sonar-runner/bin
export PATH=$PATH:~/.bin/parse_jwt
export PATH=$PATH:~/.bin/jasypt/bin


export PATH=$PATH:~/.bin/vault-cli/bin
export PATH=$PATH:~/bin/Postman
export PATH=$PATH:~/bin
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)
