#!/usr/bin/env zsh

function echo() {
    if [[ $1 == '$PS1' || $1 == "${PS1}" ]]; then
        print -P "$PS1"
    else
        builtin echo "$@"
    fi
}
