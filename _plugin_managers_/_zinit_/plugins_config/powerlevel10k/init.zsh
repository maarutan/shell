#!/usr/bin/env zsh
# ┌┬┐┬ ┬┌─┐┌┬┐┌─┐  ┬┌┐┌┬┌┬┐
#  │ ├─┤├┤ │││├┤   │││││ │
#  ┴ ┴ ┴└─┘┴ ┴└─┘  ┴┘└┘┴ ┴
#--------------------------------------------
# (c) maarutan   https://github.com/maarutan
#
THEME_TYPE="minimal"

THEME_DIR_NAME="prompts"
# square:
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

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

THEME_DIR="${${(%):-%x}:h}"
THEME_PATH="$(realpath "$THEME_DIR/$THEME_DIR_NAME")"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ -f "$THEME_PATH/$THEME_TYPE.zsh" ]] && source "$THEME_PATH/$THEME_TYPE.zsh"

