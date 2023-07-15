#!/usr/bin/env bash
#

export NVIM_APPNAME="nvim-Lazyman"
nvim --headless '+redir! > /tmp/k1' '+silent verbose map' '+redir END' +qa

grep -v ^$ /tmp/k1 > /tmp/k2
grep -v "^[[:space:]]" /tmp/k2 > /tmp/k3
