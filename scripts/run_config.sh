#!/bin/bash
#
config="$1"
shift

[ -d "${HOME}/.config/${config}" ] || {
  [ -d "${HOME}/.config/nvim-${config}" ] && config="nvim-${config}"
}

case ${config} in
  nvim-Extralight|nvim-Minimal|nvim-Simple)
    NVIM_APPNAME="${config}" nvim -c 'Lexplore' "$@"
    ;;
  nvim-Kabin|nvim-Lamia|nvim-Micah|nvim-Kickstart)
    NVIM_APPNAME="${config}" nvim -c 'Neotree' "$@"
    ;;
  nvim-Cosmic|nvim-Fennel|nvim-Opinion)
    NVIM_APPNAME="${config}" nvim -c 'NvimTreeOpen' "$@"
    ;;
  nvim-Basic|nvim-Go|nvim-Modular|nvim-Python|nvim-Rust|nvim-StartLsp|nvim-StartMason)
    NVIM_APPNAME="${config}" nvim -c 'NvimTreeToggle' "$@"
    ;;
  nvim-3rd)
    NVIM_APPNAME="${config}" nvim -c 'lua
      local api = require("nvim-tree.api")
      local tree = require("nvim-tree")
      api.tree.toggle(true)' "$@"
    ;;
  *)
    NVIM_APPNAME="${config}" nvim "$@"
    ;;
esac
