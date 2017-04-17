#! /bin/bash

# https://github.com/github/hub
if command -v hub > /dev/null; then
  alias git=hub
fi

alias ls='ls -G'

alias ..='cd ..'
alias ...='cd ../..'

alias cbranch="git rev-parse --abbrev-ref HEAD"

git_origin_or_fork() {
  if git remote 2>/dev/null | grep -iq skylerl; then
    echo "skylerl"
  else
    echo "origin"
  fi
}

git-find-merge() {
  git rev-list $1..master --ancestry-path \
    | grep -f \
      <(git rev-list $1..master --first-parent) \
    | tail -1
}

alias gp='git push `git_origin_or_fork` `cbranch`'
alias gpl='git pull `git_origin_or_fork` `cbranch`'
alias gc='git commit --verbose'
alias gs='git status --short --branch'
alias gb='git branch --verbose'
alias grc='git rebase --continue'
alias gl='git log --oneline'
alias gco='git checkout'
if type -t __git_complete > /dev/null; then
  __git_complete gco _git_checkout
fi
alias gpf='if [[ $(cbranch) != "master" ]]; then git push `git_origin_or_fork` +`cbranch`; else echo "Not going to force push master bud"; fi'
alias gd='git diff'
alias gg='git grep'
alias gupdate='git fetch origin && git rebase origin/master && gpf'
alias blush="git commit --amend --reuse-message HEAD"

alias bx='bundle exec'
alias rt='bx ruby -Itest'
alias vs='vagrant ssh'
alias knife='BUNDLE_GEMFILE=~/.chef/Gemfile bundle exec knife'

vss() {
  cd ~/src/vagrant
  # Ignore error if SSH doesn't work due to the machine not being up.
  vagrant ssh 2>/dev/null || (vagrant up && vagrant ssh)
}

alias ttc='tmux save-buffer -|pbcopy'
alias tfc='tmux set-buffer "$(pbpaste)"'

# Docker
alias docks='docker stop $(docker ps -a -q)'
alias dockr='docker rm $(docker ps -a -q)'


# Sky
alias l="ls -la"
alias ll="ls -la"
alias g="git"

# Fix bad habits
alias trash="rmtrash"
alias   del="rmtrash"
alias rm="echo Use 'del', or the full path i.e. '/bin/rm'"

alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Postgres
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

# Chef
alias chef-up='eval "$(chef shell-init bash)"'

alias vim='echo "use vi please"'
alias vi='nvim'

alias cx='chef exec'
alias today='date +"%d-%m-%y"'
alias tailf='tail -f'

alias delr='delivery review'

alias eclipse='/Applications/Eclipse.app/Contents/MacOS/eclipse>/dev/null&'
