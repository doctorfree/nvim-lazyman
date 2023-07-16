#!/usr/bin/env bash
#
# Some_Derpy_Pineapple says maybe try this:
# nvim --headless -c "redir! > testlog | lua vim.print(vim.api.nvim_get_keymap('n')" +qa

export NVIM_APPNAME="nvim-Lazyman"
nvim --headless '+redir! > /tmp/k1' '+silent verbose map' '+redir END' +qa

grep -v ^$ /tmp/k1 > /tmp/k2
grep -v "^[[:space:]]" /tmp/k2 > /tmp/k3
