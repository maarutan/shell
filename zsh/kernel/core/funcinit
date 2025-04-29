#!/usr/bin/env zsh
# ┬┌┐┌┬┌┬┐ ┌─┐┬ ┬┌┐┌┌─┐┌┬┐┬┌─┐┌┐┌┌─┐
# │││││ │  ├┤ │ │││││   │ ││ ││││└─┐
# ┴┘└┘┴ ┴  └  └─┘┘└┘└─┘ ┴ ┴└─┘┘└┘└─┘
#--------------------------------------------
# (c) maarutan   https://github.com/maarutan

FUNC_DIR_NANE="functions"

FUNCTIONS_DIR="$(dirname "$0")"
FUNCTIONS_PATH="$(realpath "$FUNCTIONS_DIR/$FUNC_DIR_NANE")"

if [ -d "$FUNCTIONS_PATH" ]; then
    for file in "$FUNCTIONS_PATH"/*; do
        if [ -f "$file" ]; then
            source "$file"
        fi
    done
else
    echo "Directory $FUNCTIONS_PATH not found"
fi


