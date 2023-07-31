#!/bin/bash
#

clear
for font in *.flf
do
  name=$(echo ${font} | sed -e "s/.flf$//")
  printf "\n\nfiglet -c -f %s Lazyman\n\n" "${name}"
  figlet -c -f "${name}" Lazyman
done
