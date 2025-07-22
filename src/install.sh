#!/usr/bin/env bash
# ┬┌┐┌┌─┐┌┬┐┌─┐┬  ┬
# ││││└─┐ │ ├─┤│  │
# ┴┘└┘└─┘ ┴ ┴ ┴┴─┘┴─┘
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
CURRENT_DIR="$(dirname "$0")"

dependencies_list=("git" "fzf" "bat" "zoxide" "chafa" "bash" "zsh")
missing_deps=()

check_dependencies() {
    for dep in "${dependencies_list[@]}"; do
        if ! command -v "$dep" >/dev/null 2>&1; then
            missing_deps+=("$dep")
        fi
    done
}

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

BUILD() {
    check_dependencies

    if [ -d "$CLONE_DIR" ]; then
        if is_valid_repo "$CLONE_DIR"; then
            echo -e "${GREEN}✅ Repo already cloned and valid: $CLONE_DIR${RESET}"
        else
            random_num=$((RANDOM * RANDOM))
            backup_file="$CLONE_DIR-bak-${random_num}"
            mv "$CLONE_DIR" "$backup_file"
            echo -e "${YELLOW}⚠️  Existing directory was not a valid repo. Backed up to:${RESET} ${CYAN}$backup_file${RESET}"
            git clone --depth 1 "$REPO_URL" "$CLONE_DIR"
        fi
    else
        git clone --depth 1 "$REPO_URL" "$CLONE_DIR"
    fi

    if [ $? -ne 0 ]; then
        echo -e "${RED}❌ Failed to clone the repository.${RESET}"
        exit 1
    fi

    if [ ! -d "$CLONE_DIR/src" ]; then
        echo -e "${RED}❌ Source directory not found in repo.${RESET}"
        exit 1
    fi

    mkdir -p "$RESULT_DIR_POS"
    cp -r "$CLONE_DIR"/* "$RESULT_DIR_POS"

    if [ -f "$HOME/.zshrc" ]; then
        mv "$HOME/.zshrc" "$HOME/.zshrc.bak"
        echo -e "${YELLOW}⚠️  Existing .zshrc backed up.${RESET}"
    fi

    ln -sf "$RESULT_DIR_POS/zshrc" "$HOME/.zshrc"
    echo -e "${GREEN}✅ Installation complete.${RESET}"

    if [ "${#missing_deps[@]}" -gt 0 ]; then
        echo -e "\n${YELLOW}⚠️  The following dependencies are missing:${RESET}"
        for dep in "${missing_deps[@]}"; do
            echo -e "   - ${RED}$dep${RESET}"
        done
        echo -e "${CYAN}Please install them manually to ensure full functionality.${RESET}"
    fi

    cd "$RESULT_DIR_POS" || exit 1
    exec zsh

}

BUILD

