#! /bin/bash

alias ls='ls -G'

alias ..='cd ..'
alias ...='cd ../..'

alias cbranch="git rev-parse --abbrev-ref HEAD"

git_origin_or_fork() {
  if git remote 2>/dev/null | grep -iq skylerto; then
    echo "skylerto"
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

alias clb='git branch | grep -v "master" | xargs git branch -d'
alias gcm='git commit -sm'
alias gcb='git checkout -b'
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

alias ttc='tmux save-buffer -|pbcopy'
alias tfc='tmux set-buffer "$(pbpaste)"'

# Docker
alias ds='docker stop $(docker ps -a -q)'
alias dr='docker rm $(docker ps -a -q)'

# Sky
alias l="ls -la"
alias ll="ls -la"
alias g="git"

alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Postgres
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias pg-start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg-stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

# Chef
alias chef-up='eval "$(chef shell-init bash)"'

# alias vim='echo "use vi please"'
alias vi='nvim'

alias cx='chef exec'
alias today='date +"%Y-%m-%d"'
alias tailf='tail -f'

alias delr='delivery review'

alias sp='spotify'
# alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

alias sv='eval "$(ssh-agent -s)" && ssh-add'

# alias indellient_share=`sudo mount -t cifs -o username=skylerl //FS1/store/ /home/skylerl/indellient`

alias nav='cd ~/dev/inlet/navigator/'
alias c='clear'

alias sed='gsed'

# Git

alias whatsmyip='curl -s https://am.i.mullvad.net/json | jq'

alias r='ranger'
