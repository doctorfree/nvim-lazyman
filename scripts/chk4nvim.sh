#!/bin/bash

cd $HOME/.config
for nvimdir in nvim-*
do
  find ${nvimdir} -type f | while read f
  do
    grep /nvim/ "$f" > /dev/null && echo "$f"
  done
done
