CURRENT_DIR="${0:A:h}"

setopt promptsubst
zinit  depth=1 lucid for                              \
    zdharma-continuum/fast-syntax-highlighting        \
    zsh-users/zsh-autosuggestions                     \
    romkatv/powerlevel10k

zinit ice depth=1
zinit light jeffreytse/zsh-vi-mode

zinit ice depth=1
zinit light Aloxaf/fzf-tab


zinit ice depth=1 wait lucid
zinit load hlissner/zsh-autopair

zinit ice depth=1 lucid wait'0'
zinit light joshskidmore/zsh-fzf-history-search

zinit ice wait lucid depth=1
zinit light MichaelAquilina/zsh-auto-notify

zinit ice wait lucid depth=1
zinit light maarutan/sudo

zinit ice wait lucid depth=1
zinit light olets/zsh-abbr


source "$CURRENT_DIR/plugins_config/init_plugins.zsh"
