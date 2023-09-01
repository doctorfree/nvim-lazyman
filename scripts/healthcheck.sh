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

checkdir="nvim-Lazyman"
[ "$1" ] && checkdir="$1"
nvimconf=$(echo "${checkdir}" | sed -e "s/^nvim-//")
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
  sed -i "1s;^;# ${checkdir} Neovim health check\n;" "${HEALTHDIR}/${HEALTH}"
}
