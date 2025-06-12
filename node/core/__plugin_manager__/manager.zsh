#!/bin/zsh

NAME="antidote"
HOST="mattmc3"
REPO="https://github.com/$HOST/$NAME.git"

PLUGIN_MANAGER_DIR="$HOME/.local/share/$NAME"
CURRENT_DECLARATIONS_FILE="$(realpath "$0")"
ZSH_PLUGINS_BASE="${CURRENT_DECLARATIONS_FILE%/*}/plugins_list"
ZSH_PLUGINS_FILE="${ZSH_PLUGINS_BASE}.txt"
ZSH_BUNDLE_CACHE="${ZSH_PLUGINS_BASE}.zsh"
ZSH_AFTER_FILE="${ZSH_PLUGINS_BASE}_after.zsh"

if [[ ! -d "$PLUGIN_MANAGER_DIR" ]]; then
    if ! command -v git >/dev/null 2>&1; then
        echo "Git not found. Cannot install Antidote."
        exit 1
    fi
    mkdir -p "$PLUGIN_MANAGER_DIR"
    git clone --depth=1 "$REPO" "$PLUGIN_MANAGER_DIR"
fi

ANTIDOTE_ENTRY="$PLUGIN_MANAGER_DIR/$NAME.zsh"
if [[ ! -f "$ANTIDOTE_ENTRY" ]]; then
    echo "❌ $NAME: couldn't find $ANTIDOTE_ENTRY"
    echo "Check the repository or script path."
    exit 1
fi

source "$ANTIDOTE_ENTRY"
autoload -Uz antidote

[[ -f "$ZSH_PLUGINS_FILE" ]] || touch "$ZSH_PLUGINS_FILE"

if [[ ! -s "$ZSH_BUNDLE_CACHE" || "$ZSH_PLUGINS_FILE" -nt "$ZSH_BUNDLE_CACHE" ]]; then
    echo -e "
    🔄 Regenerating Antidote plugin cache...\n
    ---------------------------------------------
    "
    antidote bundle < "$ZSH_PLUGINS_FILE" > "$ZSH_BUNDLE_CACHE"
    echo -e "
    🔄 End regenerating Antidote plugin cache...\n
    ---------------------------------------------
    "

fi

source "$ZSH_BUNDLE_CACHE"

[[ -f "$ZSH_AFTER_FILE" ]] && source "$ZSH_AFTER_FILE"

