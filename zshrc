#!/usr/bin/env zsh
# ┬ ┬┌─┐┬  ┌─┐┌─┐┌┬┐┌─┐  ┌┬┐┌─┐  ┌─┐┌─┐┬ ┬
# │││├┤ │  │  │ ││││├┤    │ │ │  ┌─┘└─┐├─┤
# └┴┘└─┘┴─┘└─┘└─┘┴ ┴└─┘   ┴ └─┘  └─┘└─┘┴ ┴
#---------------------------------------------------------------------
# Copyright (c) 2025 maarutan \ Marat Arzymatov. All Rights Reserved.
# https://github.com/maarutan

# -- Welcome to Zsh! --

# zmodload zsh/zprof

export ZSH_CONFIG="$HOME/.config/zsh"  # Config directory
export ZSH_PLUGINS_MANAGER="zinit"     # Plugin manager

source "$ZSH_CONFIG/init.zsh"          # Load main config

# zprof
