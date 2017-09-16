#!/bin/bash

# Notify immediatly on bg job completion
set -o notify

# Case insensitive autocompletion
shopt -s nocaseglob

# NeoVim as default editor
export EDITOR=nvim

# export TERM=screen-256color
export TERM=xterm

# Plenty big history for searching backwards and doing analysis
export HISTFILESIZE=100000
