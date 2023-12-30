#!/usr/bin/env bash

export NVIM_APPNAME="nvim-Lazyman"
exec -a "$NVIM_APPNAME" nvim -u "$HOME/.config/nvim-Lazyman/init.lua" "$@"
