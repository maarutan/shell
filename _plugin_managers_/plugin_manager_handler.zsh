#!/bin/env zsh
#     ┌─┐┬  ┬ ┬┌─┐┬┌┐┌    ┌┬┐┌─┐┌┐┌┌─┐┌─┐┌─┐┬─┐┌─┐
#     ├─┘│  │ ││ ┬││││    │││├─┤│││├─┤│ ┬├┤ ├┬┘└─┐
# ────┴  ┴─┘└─┘└─┘┴┘└┘────┴ ┴┴ ┴┘└┘┴ ┴└─┘└─┘┴└─└─┘────
#---------------------------------------------------------------------
# Copyright (c) 2025 maarutan \ Marat Arzymatov. All Rights Reserved.
# https://github.com/maarutan

RED=$'%F{red}'
GREEN=$'%F{green}'
YELLOW=$'%F{yellow}'
CYAN=$'%F{cyan}'
RESET=$'%f'

_dir_="$(dirname "$0")"
current_list_dir=("${(@f)$(ls "$_dir_" | grep '^_')}")

if [[ -n "$ZSH_PLUGINS_MANAGER" && ! " ${current_list_dir[@]} " =~ "_${ZSH_PLUGINS_MANAGER}_" ]]; then
    echo "No such plugin: $ZSH_PLUGINS_MANAGER"
    exit 1
elif [[ " ${current_list_dir[@]} " =~ "_${ZSH_PLUGINS_MANAGER}_" ]]; then
    source "$_dir_/_${ZSH_PLUGINS_MANAGER}_/load.zsh"
else
    print -P ""
    print -P "%F{red}❌ your plugin manager is: Unknown%f"
    print -P "%F{yellow}⚠️  Perhaps you entered the name of your plugin manager incorrectly.%f"
    print -P "%F{cyan}📄 Check your initialization file where you defined:%f"
    print -P "%F{green}    export ZSH_PLUGINS_MANAGER=your_plugin_name%f"
    print -P ""
fi

if ! command -v git >/dev/null 2>&1; then
    print -P ""
    print -P ""
    print -P "%F{red}%B%U❌ git is not installed%u%b%f"
    print -P "%F{yellow}%B⚠️  Please install git.%b%f"
    print -P "%F{yellow}%B⚠️  if your distribution :%b%f"
    print -P "%F{yellow}%B%UExample:%u%b%f"
    print -P "%F{yellow}    Arch Linux: sudo pacman -S %B%Ugit%b%u%b%f"
    print -P "%F{yellow}    Ubuntu: sudo apt install   %B%Ugit%b%u%b%f"
    print -P "%F{yellow}    Fedora: sudo dnf install   %B%Ugit%b%u%b%f"
    print -P "%F{yellow}    macOS : brew install       %B%Ugit%b%u%b%f"
    print -P "%F{yellow}    and more ...%b%f"
fi

