#!/usr/bin/env zsh
# ┌┬┐┬ ┬┌─┐┌┬┐┌─┐  ┬┌┐┌┬┌┬┐
#  │ ├─┤├┤ │││├┤   │││││ │
#  ┴ ┴ ┴└─┘┴ ┴└─┘  ┴┘└┘┴ ┴
#--------------------------------------------
# (c) maarutan   https://github.com/maarutan

THEME_TYPE="minimal"

# norounded:
# ╭─    ~ ─────────────────────────────────────────────── ✔ ─╮
# ╰─                                                             ─╯
#
# rounded:
# ╭─    ~ ────────────────────────────────────────────── ✔ ─╮
# ╰─                                                              ─╯
#
# knife:
# ╭─    ~ ▓▒░───────────────────────────────────────────░▒▓ ✔ ─╮
# ╰─                                                              ─╯
#
# minimal:
# ╭─   ~
# ╰─❯


#INFO: -----=== logic ===-----

THEME_DIR_NAME="prompts"
THEME_DIR="$(dirname "$0")"
THEME_PATH="$(realpath "$THEME_DIR/$THEME_DIR_NAME")"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ ! -f "$THEME_PATH/$THEME_TYPE.zsh"  ]] || source "$THEME_PATH/$THEME_TYPE.zsh"


typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
