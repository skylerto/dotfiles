#!/bin/bash

# Adopted from /alrra/dotfiles

# - - - - -
# Command utils:
# - cmd_exists: check if a command exists
# - brew_installed: check if brew is installed
#
# - - - - -

cmd_exists() {
    command -v "$1" &> /dev/null
}

brew_installed() {
  cmd_exists "brew"
}

answer_is_yes() {
    [[ "$REPLY" =~ ^[Yy]$ ]] \
        && return 0 \
        || return 1
}

get_answer() {
    printf "%s" "$REPLY"
}

ask() {
    print_question "$1"
    read -r
}


ask_for_confirmation() {
    print_question "$1 (y/n) "
    read -r -n 1
    printf "\n"
}

execute() {

    local tmpFile="$(mktemp /tmp/XXXXX)"
    local exitCode=0

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    eval "$1" \
        &> /dev/null \
        2> "$tmpFile"

    print_result $? "${2:-$1}"
    exitCode=$?

    if [ $exitCode -ne 0 ]; then
        print_error_stream "↳ ERROR:" < "$tmpFile"
    fi

    rm -rf "$tmpFile"

    return $exitCode

}



# - - - - -
# Print formatting

print_result() {
  if [ "$1" -eq 0 ]; then
      print_success "$2"
  else
      print_error "$2"
  fi
  return "$1"
}

print_error_stream() {
  print_error "$1"
}

# Color printers.
print_in_green() {
  printf "\e[0;32m%b\e[0m" "$1"
}
print_in_red() {
  printf "\e[0;31m%b\e[0m" "$1"
}

# Success
print_success() {
  print_in_green "  [✔] $1\n"
}

# Error
print_error() {
  print_in_red "  [✖] $1 $2\n"
}

print_info() {
    print_in_purple "\n $1\n\n"
}

print_in_purple() {
    printf "\e[0;35m%b\e[0m" "$1"
}

print_question() {
    print_in_yellow "  [?] $1"
}


print_in_yellow() {
    printf "\e[0;33m%b\e[0m" "$1"
}
