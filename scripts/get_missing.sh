#!/bin/bash
#
SED="sed"
have_gsed=$(type -p gsed)
[ "${have_gsed}" ] && SED="gsed"

cd $HOME/src/Neovim/nvim-lazyman/info
grep -v ':' *.md | grep -- '- ' | ${SED} -e "s/- //" > /tmp/a
cat /tmp/a | awk -F ':' ' { print $2 } ' | sort | uniq > /tmp/missing.txt
rm -f /tmp/a
