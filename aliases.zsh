#!/usr/bin/env zsh
# ┌─┐┬  ┬┌─┐┌─┐┌─┐┌─┐
# ├─┤│  │├─┤└─┐├┤ └─┐
# ┴ ┴┴─┘┴┴ ┴└─┘└─┘└─┘
#--------------------------------------------
# (c) maarutan   https://github.com/maarutan

#-- variables --

EXPLORE="yazi"
ROOTEXPLORE="yazi"

EDITOR="nvim"
ROOTEDITOR="nvim"

# -- change directory --

alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~"

# -- system --

alias cls="clear && exec $(basename $SHELL)"
alias cls!="clear"

alias ex="exit"

alias pg="ping google.com"

alias tch="touch"
alias mkd="mkdir"

alias rm!="rm -rf"
alias rm="rm -r"

alias ll="eza -l -g --icons"
alias la='exa -a --icons --color'
alias lt='exa --tree --icons --color'
alias ls='exa --icons --color=auto'

alias e=$"EXPLORE"
alias re="sudo -E \${ROOTEXPLORE}"
alias n=$"EDITOR"
alias rn="sudo -E \${ROOTEDITOR}"
alias cpp="copypath"

# -- utils  --

alias nzsh="nvim ~/.zshrc"
alias matrix="unimatrix -b -s 95  -c blue"
