#!/usr/bin/env zsh
# ┌─┐┌─┐┬ ┬  ┬┌┐┌┬┌┬┐
# ┌─┘└─┐├─┤  │││││ │
# └─┘└─┘┴ ┴  ┴┘└┘┴ ┴
#--------------------------------------------
# (c) maarutan   https://github.com/maarutan

KARNEL_DIR="node"


# Core
source "$ZSH_CONFIG/$KARNEL_DIR/core/beauty.zsh"
source "$ZSH_CONFIG/$KARNEL_DIR/core/environments.zsh"
source "$ZSH_CONFIG/$KARNEL_DIR/core/aliases.zsh"
source "$ZSH_CONFIG/$KARNEL_DIR/core/themeinit.zsh"
source "$ZSH_CONFIG/$KARNEL_DIR/core/keybindings.zsh"
source "$ZSH_CONFIG/$KARNEL_DIR/core/funcinit.zsh"
source "$ZSH_CONFIG/$KARNEL_DIR/core/abbreviation.zsh"


source "$ZSH_CONFIG/$KARNEL_DIR/core/__plugin_manager__/manager.zsh"
# Plugins
source "$ZSH_CONFIG/$KARNEL_DIR/plugins/zsh-vi-mode.zsh"
source "$ZSH_CONFIG/$KARNEL_DIR/plugins/fzf-tab.zsh"
source "$ZSH_CONFIG/$KARNEL_DIR/plugins/fzf-history.zsh"
source "$ZSH_CONFIG/$KARNEL_DIR/plugins/syntax-highlighting.zsh"
source "$ZSH_CONFIG/$KARNEL_DIR/plugins/zsh_autosuggest.zsh"
