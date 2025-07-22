#!/usr/bin/env zsh
# ┌─┐┬  ┬┌┬┐
# ┌─┘└┐┌┘│││
# └─┘ └┘ ┴ ┴
#--------------------------------------------
# (c) maarutan   https://github.com/maarutan

# copy   ===  yank

# yank for clipboard
zvm_vi_yank() {
    zvm_yank
    if command -v wl-copy &>/dev/null; then
        # ---------------- yank WAYLAND
        printf %s "${CUTBUFFER}" | wl-copy -n &>/dev/null


    elif command -v xclip &>/dev/null; then
        # ---------------- yank X11
        printf %s "${CUTBUFFER}" | xclip -selection clipboard  &>/dev/null # X11


    elif command -v pbcopy &>/dev/null; then
        # ---------------- yank macOS
        printf %s "${CUTBUFFER}" | pbcopy &>/dev/null  # macOS

        # else then
        #     notify-send -- not `copy` utils --
    fi
    zvm_exit_visual_mode
}

# keybindings
ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
