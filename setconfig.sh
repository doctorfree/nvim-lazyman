#!/bin/bash
#
# setconfig.sh - switch configuration.lua 'config' setting
#
# config entries in configuration.lua look like this:
# M.config = "doctorfree"
# -- M.config = "lazyvim"
# -- M.config = "tvl"
# call this script from a dashboard button entry or keymap
# to easily switch between neovim configurations
#
# usage: setconfig.sh <configuration>
# where <configuration> is a subdirectory in ~/.config/nvim/lua/

new="$1"
[ "${new}" ] || {
  echo "ERROR: Missing <configuration> argument"
  echo "Usage: setconfig.sh <configuration>"
  exit 1
}

luadir=${HOME}/.config/nvim/lua
[ -d ${luadir}/${new} ] || {
  newnew=$(echo "${new}" | tr '[:upper:]' '[:lower:]')
  [ -d ${luadir}/${newnew} ] || {
    echo "ERROR: Cannot locate ${luadir}/${new}"
    echo "Usage: setconfig.sh <configuration>"
	echo "Where <configuration> is a subdirectory in ${luadir}"
    exit 1
  }
  new=${newnew}
}

configfile=${luadir}/configuration.lua
[ -f ${configfile} ] || {
  echo "ERROR: Missing configuration file ${configfile}"
  exit 1
}

old=$(grep ^M.config ${configfile} | awk -F '"' ' { print $2 } ')
[ "${old}" ] || {
  echo "WARNING: Cannot locate M.config setting in ${configfile}"
  echo "Verify this setting is included and at the beginning of a line"
  exit 1
}

[ "${new}" == "${old}" ] && {
  echo "INFO: M.config already set to ${new}"
  echo "No changes to ${configfile}"
  exit 0
}

cat ${configfile} | sed -e "s/^M.config.*/M.config = \"${new}\"/" > /tmp/nvim$$
cp /tmp/nvim$$ ${configfile}
rm -f /tmp/nvim$$
