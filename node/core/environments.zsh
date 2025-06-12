#!/usr/bin/env zsh
# ┌─┐┌┐┌┬  ┬┬┬─┐┌─┐┌┐┌┌┬┐┌─┐┌┐┌┌┬┐┌─┐
# ├┤ │││└┐┌┘│├┬┘│ │││││││├┤ │││ │ └─┐
# └─┘┘└┘ └┘ ┴┴└─└─┘┘└┘┴ ┴└─┘┘└┘ ┴ └─┘
#--------------------------------------------
# (c) maarutan   https://github.com/maarutan

# ---- Options ----
#- set
setopt INTERACTIVE_COMMENTS     # Enables support for comments with ': #' in Zsh
setopt AUTO_CD                  # Automatically changes to a directory if you type its name (without using 'cd')
setopt HIST_FCNTL_LOCK          # Locks history file with fcntl to prevent concurrent write issues
setopt HIST_IGNORE_ALL_DUPS     # Ignores all duplicate commands in history (won't record repeated commands)
setopt SHARE_HISTORY            # Enables shared history across multiple Zsh sessions
setopt HIST_IGNORE_DUPS         # Ignores duplicate commands in history if they are consecutive
setopt INC_APPEND_HISTORY       # Immediately writes commands to history as they are executed
setopt HIST_REDUCE_BLANKS       # Removes unnecessary spaces before saving commands in history
setopt hist_ignore_all_dups     # Duplicate of HIST_IGNORE_ALL_DUPS: Ignores duplicates in history
setopt hist_save_no_dups        # Removes duplicates from history file when saving at session end
setopt CORRECT                  # Auto Correct command
setopt CORRECT_ALL              # Auto Correct command All
#- unset
unsetopt AUTO_REMOVE_SLASH      # Disables automatic removal of trailing slashes in directory paths
unsetopt HIST_EXPIRE_DUPS_FIRST # Disables removing older duplicates first during history cleanup
unsetopt EXTENDED_HISTORY       # Disables saving timestamps in history

# ---- Path ----
export GOPATH="$HOME/.config/go"

LIST_PATH=(
    "$HOME/.local/bin"
    "$HOME/.local/share/nvim/mason/bin"
    "$HOME/.npm-global/bin"
    "$HOME/.cargo/bin"
)
export PATH="$(IFS=:; echo "${LIST_PATH[*]}"):$PATH"

# ---- Autoload
autoload -U compinit; compinit
zmodload zsh/complist
autoload -Uz edit-command-line; zle -N edit-command-line

# ---- Software specific ----
export EDITOR="nvim"                # default EDITOR = nvim
export VISUAL="nvim"                # devault VISUAL EDITOR = nvim
export QT_QPA_PLATFORMTHEME=qt5ct   # support qt5 theme

# History settings
HISTFILE=$ZSH_CONFIG/".history"      # where your history ???
HISTSIZE=100000                     # history size
SAVEHIST=100000                     # max history save

# ---- Initialize tools ----
eval "$(zoxide init zsh)"           # Initialize zoxide

# ----- Completion Configuration -----
zstyle ":completion:*:*:*:*:*" menu select   # enable menu at completion
zstyle ":completion:*" use-cache yes         # save completion in cache for fast review
zstyle ":completion:*" special-dirs true     # review dir
zstyle ":completion:*" squeeze-slashes true  # squeeze slashes
zstyle ":completion:*" file-sort change      # last file check if you change -----------------------------
zstyle ":completion:*" matcher-list "m:{[:lower:][:upper:]}={[:upper:][:lower:]}" "r:|=*" "l:|=* r:|=*" # |
zstyle ':completion:*:descriptions' format '%b%B%d'     # font type for completion
zstyle ':completion:*:messages' format '%b%B%U%S%m%u%s' # font type for completion
zstyle ':completion:*:warnings' format '%b%B%U%S%w%u%s' # font type for completion


#  ----- FZF configuration -----
export FZF_DEFAULT_OPTS="
--height=100%                 \
    --border                       \
    --preview '([[ -d {} ]]         \
            && eza --tree --level=3          \
            --icons {} || bat --style=numbers \
    --color=always {} || cat {})'
"
if [[ -v __FZF_PREVIEW ]]; then
	unset __FZF_PREVIEW
FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS
--preview='(
    bat --color=always {} ||
    tree -ahpCL 3 $__TREE_IGNORE {}
) 2>/dev/null | head -n 100'"
fi


