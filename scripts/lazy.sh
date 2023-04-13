#!/usr/bin/env bash
#
# Command line Lazy - it's a one-liner
#
# Usage: lazy.sh <command>
#
# Example: ./lazy.sh install

nvim --headless "+Lazy! $*" +qa
