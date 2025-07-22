#!/usr/bin/env bash
# ┬ ┬┌┐┌┬┌┐┌┌─┐┌┬┐┌─┐┬  ┬
# │ ││││││││└─┐ │ ├─┤│  │
# └─┘┘└┘┴┘└┘└─┘ ┴ ┴ ┴┴─┘┴─┘
#--------------------------------------------
# (c) maarutan   https://github.com/maarutan

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
CYAN="\033[36m"
RESET="\033[0m"

REPO_NAME="shell"
REPO_URL="https://github.com/maarutan/shell.git"
RESULT_DIR_POS="$HOME/.config/zsh"
CLONE_DIR="$HOME/$REPO_NAME"

is_valid_repo() {
    local dir="$1"
    if [ -d "$dir/.git" ]; then
        local url
        url=$(git -C "$dir" config --get remote.origin.url 2>/dev/null)
        [[ "$url" == "$REPO_URL" ]]
    else
        return 1
    fi
}

UNINSTALL() {
    echo -e "${CYAN}🧹 Starting removal of Zsh environment...${RESET}"

    if [ -L "$HOME/.zshrc" ]; then
        target=$(readlink "$HOME/.zshrc")
        if [[ "$target" == "$RESULT_DIR_POS/zshrc" ]]; then
            rm "$HOME/.zshrc"
            echo -e "${GREEN}✅ Removed symlink: ~/.zshrc${RESET}"
        else
            echo -e "${YELLOW}⚠️  ~/.zshrc is a symlink, but not from this installer. Skipping.${RESET}"
        fi
    elif [ -f "$HOME/.zshrc" ]; then
        echo -e "${YELLOW}⚠️  ~/.zshrc is a regular file. Not deleting.${RESET}"
    fi

    if [ -d "$RESULT_DIR_POS" ]; then
        marker_file="$RESULT_DIR_POS/zshrc"
        if [ -f "$marker_file" ]; then
            rm -rf "$RESULT_DIR_POS"
            echo -e "${GREEN}✅ Removed config directory: $RESULT_DIR_POS${RESET}"
        else
            echo -e "${YELLOW}⚠️  $RESULT_DIR_POS does not appear to belong to this setup. Skipping.${RESET}"
        fi
    fi

    if [ -d "$CLONE_DIR" ]; then
        if is_valid_repo "$CLONE_DIR"; then
            rm -rf "$CLONE_DIR"
            echo -e "${GREEN}✅ Removed cloned repository: $CLONE_DIR${RESET}"
        else
            random_num=$((RANDOM * RANDOM))
            new_name="${CLONE_DIR}-unknown-${random_num}"
            mv "$CLONE_DIR" "$new_name"
            echo -e "${YELLOW}⚠️  Repo doesn't match expected origin. Moved to:${RESET} ${CYAN}$new_name${RESET}"
        fi
    fi

    echo -e "${CYAN}🧽 Done.${RESET}"
}

UNINSTALL
