rename_tmux_window_to_current_dir() {
  if [[ "$TERM" == "screen-256color" && -n "$TMUX" ]]; then
    if [[ "$PWD" != "$LPWD" ]]; then
      LPWD="$PWD"
      tmux rename-window ${PWD//*\//}
    fi
  fi
}

ssh() {
    if [[ -z $TMUX ]]; then
        /usr/bin/ssh $@
        return
    fi

    local remote=${@: -1}
    local old_name=$(tmux display-message -p '#W')

    if [[ -n $remote ]]; then
        tmux rename-window "$remote"
    fi

    /usr/bin/ssh $@

    tmux rename-window "$old_name"
}

# PROMPT_COMMAND='if [[ "$bashrc" != "$PWD" && "$PWD" != "$HOME" && -e .bashrc ]]; then bashrc="$PWD"; . .bashrc; fi'
PROMPT_COMMAND='if [[ "$profile" != "$PWD" && "$PWD" != "$HOME" && -e .profile ]]; then profile="$PWD"; . .profile; fi'


