#!/bin/bash

cd "$HOME"/.config || exit 1
for nvimdir in nvim-*
do
  [ "${nvimdir}" == "nvim-Lazyman" ] && continue
  find "${nvimdir}" -type f | while read -r f
  do
    echo "$f" | grep nvim-Mini/pack/ > /dev/null && continue
    echo "$f" | grep /.git/ > /dev/null && continue
    grep /nvim/ "$f" > /dev/null && echo "$f"
  done
done
