#!/bin/bash
#
cd $HOME/src/Neovim/nvim-lazyman/info
grep -v ':' *.md | grep -- '- ' | sed -e "s/- //" > /tmp/a
cat /tmp/a | awk -F ':' ' { print $2 } ' | sort | uniq > /tmp/missing.txt
rm -f /tmp/a
