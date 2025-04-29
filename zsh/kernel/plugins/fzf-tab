#!/usr/bin/env zsh
# ┌─┐┌─┐┌─┐ ┌┬┐┌─┐┌┐ 
# ├┤ ┌─┘├┤───│ ├─┤├┴┐
# └  └─┘└    ┴ ┴ ┴└─┘
#--------------------------------------------
# (c) maarutan   https://github.com/maarutan

zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select
zstyle ':fzf-tab:complete:*' fzf-preview    \
    'if [[ -d $realpath ]]; then eza --tree  \
                 --level=3 --icons $realpath; \
                 else bat --style=numbers      \
                 --color=always $realpath       \
                 || cat $realpath; fi'
zstyle ':fzf-tab:complete:*' fzf-preview-window down:15:wrap
zstyle ':fzf-tab:*' fzf-flags --height=70% \
    --border 


# complete
bindkey '^I' fzf-tab-complete # tab 
