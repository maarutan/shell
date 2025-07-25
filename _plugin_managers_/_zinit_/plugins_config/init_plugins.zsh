#!/usr/bin/env zsh
# ┬┌┐┌┬┌┬┐  ┌─┐┬  ┬ ┬┌─┐┬┌┐┌┌─┐
# │││││ │   ├─┘│  │ ││ ┬││││└─┐
# ┴┘└┘┴ ┴   ┴  ┴─┘└─┘└─┘┴┘└┘└─┘
#--------------------------------------------
# (c) maarutan   https://github.com/maarutan

CURRENT_DIR="${0:A:h}"
CURRENT_FILENAME="${0:A:t}"

CURRENT_LIST_DIR=()
for file in "$CURRENT_DIR"/*(N); do
    [[ "$file" != "${0:A}" ]] && CURRENT_LIST_DIR+=("$file")
done

for i in "${CURRENT_LIST_DIR[@]}"; do
    if [[ -f "$i/init.zsh" ]]; then
        source "$i/init.zsh"
    fi
done

