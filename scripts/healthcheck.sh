#!/usr/bin/env bash
#
# healthcheck.sh [config name]
#
# Generate a Neovim configuration health check from the command line
# If no configuraton name is given, use 'lazyman/Lazyman'
#
# Generated health checks are stored in ~/.config/lazyman/Lazyman/logs/

LMANDIR="${HOME}/.config/lazyman/Lazyman"
LOGDIR="${LMANDIR}/logs"
[ -d "${LOGDIR}" ] || exit 1

checkdir="lazyman/Lazyman"
[ "$1" ] && checkdir="$1"
nvimconf=$(echo "${checkdir}" | sed -e "s%lazyman/%%")
HEALTH="health-${nvimconf}.md"

export NVIM_APPNAME="${checkdir}"
nvim --headless "+checkhealth" "+w!${LOGDIR}/${HEALTH}" +qa \
  "${LMANDIR}"/README.md "${LMANDIR}"/init.lua >/dev/null 2>&1

[ -f "${LOGDIR}/${HEALTH}" ] && {
  sed -i "1s;^;# ${checkdir} Neovim health check\n;" "${LOGDIR}/${HEALTH}"
}
