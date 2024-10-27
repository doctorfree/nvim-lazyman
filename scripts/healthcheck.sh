#!/usr/bin/env bash
#
# healthcheck.sh [config name]
#
# Generate a Neovim configuration health check from the command line
# If no configuraton name is given, use 'nvim-Lazyman'
#
# Generated health checks are stored in ~/.config/nvim-Lazyman/info/health/

CONFDIR="${HOME}/.config"
LMANDIR="${CONFDIR}/nvim-Lazyman"
HEALTHDIR="${LMANDIR}/info/health"
[ -d "${HEALTHDIR}" ] || mkdir -p "${HEALTHDIR}"
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

checkdir="nvim-Lazyman"
[ "$1" ] && checkdir="$1"
nvimconf=$(echo "${checkdir}" | ${SED} -e "s/^nvim-//")
[ -d "${CONFDIR}/${checkdir}" ] || {
  if [ -d "${CONFDIR}/nvim-${checkdir}" ]
  then
    nvimconf="${checkdir}"
    checkdir="nvim-${checkdir}"
  else
    echo "Cannot locate Neovim configuration directory for $nvimconf"
    exit 1
  fi
}
HEALTH="${nvimconf}.md"

export NVIM_APPNAME="${checkdir}"
nvim --headless "+checkhealth" "+w!${HEALTHDIR}/${HEALTH}" +qa \
  "${LMANDIR}"/README.md "${LMANDIR}"/init.lua >/dev/null 2>&1

[ -f "${HEALTHDIR}/${HEALTH}" ] && {
  ${SED} -i "1s;^;# ${checkdir} Neovim health check\n;" "${HEALTHDIR}/${HEALTH}"
  cat "${HEALTHDIR}/${HEALTH}" | ${SED} -e "s/===.*/--------/" > ${TMPDIR}/h$$
  cp ${TMPDIR}/h$$ "${HEALTHDIR}/${HEALTH}"
  rm -f ${TMPDIR}/h$$
}
