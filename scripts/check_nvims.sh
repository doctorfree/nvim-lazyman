#!/usr/bin/env bash
#
# check_nvims.sh [-a] [-u] [config name]
#
# Perform several checks of Lazyman Neovim configurations
# If no configuraton name is given, use 'lazyman/Lazyman'
#

CONFDIR="${HOME}/.config"
LMANDIR="${CONFDIR}/lazyman/Lazyman"
CONFIG="${LMANDIR}/scripts/configrc"
INFODIR="${LMANDIR}/info"
HTMLDIR="${INFODIR}/html"

if [ -f "${CONFIG}" ]
then
  source "${CONFIG}"
else
  printf "\n\nERROR: Missing ${CONFIG}"
  printf "\n\nReinstall Lazyman\n\n"
  exit 1
fi

CF_NAMES="Lazyman ${BASECFGS} ${LANGUCFGS} ${PRSNLCFGS} ${STARTCFGS}"

usage() {
  printf "\n\nUsage: check_nvims.sh [-a] [-u] [conf]"
  printf "\nWhere:"
  printf "\n\t-a indicates perform checks for all supported configs"
  printf "\n\t-u displays this usage message and exits"
  printf "\n\t[conf] is the configuration name (default: Lazyman)\n\n"
  exit 1
}

check_info() {
  config="$1"
  isinst=
  if [ -d ${CONFDIR}/lazyman/${config} ]
  then
    printf "\n${config} installed"
    isinst=1
  else
    printf "\n${config} uninstalled"
  fi
  if [ -f ${INFODIR}/${config}.md ]
  then
    printf "\n${config} info markdown exists"
    grep ^### ${INFODIR}/${config}.md | grep 'managed plugins' > /dev/null || {
      printf ", missing managed plugins section"
    }
    grep ^### ${INFODIR}/${config}.md | grep 'Keymaps' > /dev/null || {
      printf ", missing keymaps section"
    }
  else
    printf "\n${config} info markdown missing"
  fi
  if [ -f ${HTMLDIR}/${config}.html ]
  then
    printf "\n${config} info html exists"
  else
    printf "\n${config} info html missing"
  fi
  if [ "${isinst}" ]
  then
    export NVIM_APPNAME="lazyman/${config}"
    status=$(nvim --headless -c 'set nomore' -c 'qa' 2>&1 | grep Error | grep -v 'Error detected while processing command line:')
    if [ "${status}" ]
    then
      printf "\n${config} startup unclean"
    else
      printf "\n${config} startup clean"
    fi
  else
    printf "\n${config} startup unknown"
  fi
  printf "\n"
}

all=
while getopts "au" flag; do
  case $flag in
    a)
      all=1
      ;;
    u)
      usage
      ;;
    *)
      printf "\nInvalid flag: %s" "$flag"
      usage
      ;;
  esac
done
shift $(( OPTIND - 1 ))

[ "${all}" ] && {
  for conf in ${CF_NAMES}
  do
    check_info "${conf}"
  done
  exit 0
}

checkdir="lazyman/Lazyman"
[ "$1" ] && checkdir="$1"
conf=$(echo "${checkdir}" | sed -e "s%lazyman/%%")
check_info "${conf}"
