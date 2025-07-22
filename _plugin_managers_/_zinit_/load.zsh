#!/bin/env zsh
#
# ┌─┐┬┌┐┌┬┌┬┐
# ┌─┘│││││ │
# └─┘┴┘└┘┴ ┴
#---------------------------------------------------------------------
# Copyright (c) 2025 maarutan \ Marat Arzymatov. All Rights Reserved.
# https://github.com/maarutan

# -- variables --

REPO="https://github.com/zdharma-continuum/zinit"
LOCAL="$HOME/.local/share"
ZINIT_HOME="$LOCAL/zinit"
CURRENT_DIR="${0:A:h}"

# -- colors --

RED=$'%F{red}'
GREEN=$'%F{green}'
YELLOW=$'%F{yellow}'
CYAN=$'%F{cyan}'
RESET=$'%f'

# -- install zinit if not exists --

if [[ ! -d "$ZINIT_HOME" ]]; then
    mkdir -p "$LOCAL"

    echo -e "\n\n┌─┐┬┌┐┌┬┌┬┐  ┌─┐┬  ┬ ┬┌─┐┬┌┐┌  ┌┬┐┌─┐┌┐┌┌─┐┌─┐┌─┐┬─┐
┌─┘│││││ │   ├─┘│  │ ││ ┬││││  │││├─┤│││├─┤│ ┬├┤ ├┬┘
└─┘┴┘└┘┴ ┴   ┴  ┴─┘└─┘└─┘┴┘└┘  ┴ ┴┴ ┴┘└┘┴ ┴└─┘└─┘┴└─
--------------------------------------------------------------
# zdharma-continuum/zinit/zinit.zsh
# Copyright (c) 2016-2021 Sebastian Gniazdowski
# Copyright (c) 2021-2023 zdharma-continuum
# Homepage: https://github.com/zdharma-continuum/zinit
# License: MIT License\n\n"

    print -P "%F{GREEN}✅ Created: $ZINIT_HOME%f"
    git clone --depth 1 "$REPO" "$ZINIT_HOME"
    print -P "\n%F{GREEN}✅ Installed: $ZINIT_HOME/zinit.zsh%f"

    print -P "%F{CYAN}📄 Zinit initialized   :D %f"
    source "$ZINIT_HOME/zinit.zsh"
elif [[ -f "$ZINIT_HOME/zinit.zsh" ]]; then
    source "$ZINIT_HOME/zinit.zsh"
fi


# -- source plugin list if exists --

if [[ -f "$CURRENT_DIR/plugin_list.zsh" ]]; then
    source "$CURRENT_DIR/plugin_list.zsh"
else
    print -P "%F{RED}❌ Missing file: plugin_list.zsh in $CURRENT_DIR%f"
fi

