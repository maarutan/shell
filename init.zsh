#!/usr/bin/env zsh
# ┬ ┬┌─┐┬  ┌─┐┌─┐┌┬┐┌─┐  ┌┬┐┌─┐  ┌─┐┌─┐┬ ┬
# │││├┤ │  │  │ ││││├┤    │ │ │  ┌─┘└─┐├─┤
# └┴┘└─┘┴─┘└─┘└─┘┴ ┴└─┘   ┴ └─┘  └─┘└─┘┴ ┴
#---------------------------------------------------------------------
# Copyright (c) 2025 maarutan \ Marat Arzymatov. All Rights Reserved.
# https://github.com/maarutan


# -- variables --

_dir_="$(dirname "$0")"
plugin_managers=""$_dir_"/_plugin_managers_"

RED=$'%F{red}'
GREEN=$'%F{green}'
YELLOW=$'%F{yellow}'
CYAN=$'%F{cyan}'
RESET=$'%f'

# -- load keybindings
source "$_dir_"/keybindings.zsh

# -- load beauty
source "$_dir_"/beauty.zsh

# -- load aliases
source "$_dir_"/aliases.zsh

# -- load local functions
source "$_dir_"/functions/func_init.zsh

# -- load environments
source "$_dir_"/environments.zsh


# -- load plugin manager --

if [[ -d "$plugin_managers" ]]; then
    source "$plugin_managers/plugin_manager_handler.zsh"
else
    print -P "%F{red}❌ No such directory: $plugin_managers%f"
    print -P "%F{yellow}⚠️ Create a directory in the zsh configuration directory:
~~>     '$plugin_managers' ~~
    and configure your plugin manager inside it so that the plugins work. %f"
    exit 1
fi

