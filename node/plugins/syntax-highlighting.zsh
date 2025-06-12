#!/usr/bin/env zsh
# ┌─┐┬ ┬┌┐┌┌┬┐┌─┐─┐ ┬   ┬ ┬┬┌─┐┬ ┬┬  ┬┌─┐┬ ┬┌┬┐┬┌┐┌┌─┐
# └─┐└┬┘│││ │ ├─┤┌┴┬┘───├─┤││ ┬├─┤│  ││ ┬├─┤ │ │││││ ┬
# └─┘ ┴ ┘└┘ ┴ ┴ ┴┴ └─   ┴ ┴┴└─┘┴ ┴┴─┘┴└─┘┴ ┴ ┴ ┴┘└┘└─┘
#--------------------------------------------
# (c) maarutan   https://github.com/maarutan

zstyle ':prezto:module:syntax-highlighting' color 'yes'
zstyle ':prezto:module:syntax-highlighting' highlighters \
  'main' \
  'brackets' \
  'pattern' \
  'line' \
  'cursor' \
  'root'

zstyle ':prezto:module:syntax-highlighting' styles \
  'builtin' 'bg=blue' \
  'command' 'bg=blue' \
  'function' 'bg=blue'
