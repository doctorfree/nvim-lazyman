#!/bin/bash
#
SED="sed"
have_gsed=$(type -p gsed)
[ "${have_gsed}" ] && SED="gsed"

# Use TMPDIR or TEMPDIR if they are set, otherwise /tmp
TMP=
if [ "${TMPDIR}" ]; then
  [ -d "${TMPDIR}" ] && TMP="${TMPDIR}"
else
  [ "${TEMPDIR}" ] && [ -d "${TEMPDIR}" ] && TMP="${TEMPDIR}"
fi
[ "${TMP}" ] || TMP="/tmp"
export TMPDIR="${TMP}"

cd $HOME/src/Neovim/nvim-lazyman/info
grep -v ':' *.md | grep -- '- ' | ${SED} -e "s/- //" > ${TMPDIR}/a
cat ${TMPDIR}/a | awk -F ':' ' { print $2 } ' | sort | uniq > ${TMPDIR}/missing.txt
rm -f ${TMPDIR}/a
