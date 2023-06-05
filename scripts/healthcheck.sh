#!/usr/bin/env bash
#
# healthcheck.sh [config name]
#
# Generate a Neovim configuration health check from the command line
# If no configuraton name is given, use 'nvim-Lazyman'
#
# Generated health checks are stored in ~/.config/nvim-Lazyman/logs/

LOGDIR="${HOME}/.config/nvim-Lazyman/logs"
[ -d "${LOGDIR}" ] || exit 1

checkdir="nvim-Lazyman"
[ "$1" ] && checkdir="$1"
nvimconf=$(echo "${checkdir}" | sed -e "s/^nvim-//")
HEALTH="health-${nvimconf}.md"

export NVIM_APPNAME="${checkdir}"
nvim --headless "+checkhealth" "+w!${LOGDIR}/${HEALTH}" +qa >/dev/null 2>&1

[ -f "${LOGDIR}/${HEALTH}" ] && {
  sed -i "1s;^;# ${checkdir} Neovim health check\n;" "${LOGDIR}/${HEALTH}"
}
