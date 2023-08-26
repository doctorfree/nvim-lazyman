#!/bin/bash

cd "$HOME"/.config/lazyman || exit 1
for nvimdir in *
do
  [ "${nvimdir}" == "Lazyman" ] && continue
  find "${nvimdir}" -type f | while read -r f
  do
    echo "$f" | grep Mini/pack/ > /dev/null && continue
    echo "$f" | grep /.git/ > /dev/null && continue
    grep /nvim/ "$f" > /dev/null && echo "$f"
  done
done
