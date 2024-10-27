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

rm -f ${TMPDIR}/plugin_urls.txt
touch ${TMPDIR}/plugin_urls.txt
for confdir in $HOME/.config/nvim-*
do
  find "${confdir}" -name packer_compiled.lua -print0 | \
    xargs -0 grep url | grep = | awk -F '=' ' { print $2 } ' | \
    ${SED} -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//' | \
    ${SED} -e 's/"//g' -e "s/'//g" >> ${TMPDIR}/plugin_urls.txt
done
sort ${TMPDIR}/plugin_urls.txt | uniq > ${TMPDIR}/sorted_plugin_urls.txt
