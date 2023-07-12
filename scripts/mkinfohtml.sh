#!/bin/bash
#

INFODIR="${HOME}/src/Neovim/nvim-lazyman/info"
[ -d "${INFODIR}" ] || {
  echo "${INFODIR} does not exist or is not a directory. Exiting."
  exit 1
}

cd "${INFODIR}"
for i in *.md                                                                                          ─╯
do
  [ "$i" == "*.md" ] && continue
  j=`echo $i | sed -e "s/.md/.html/"`
  echo "Generating HTML from $i"
  pandoc -t html -o html/$j $i
done
exit 0
