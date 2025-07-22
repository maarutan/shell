CURRENT_DIR="${0:A:h}"
CURRENT_FILENAME="${0:A:t}"

for file in "$CURRENT_DIR"/*.zsh(N); do
    [[ "$file" != "${0:A}" ]] && source "$file"
done

