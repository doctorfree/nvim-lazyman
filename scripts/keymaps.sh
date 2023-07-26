#!/usr/bin/env bash
#
# Mapping modes:
# n	Normal
# v	Visual and Select
# s	Select
# x	Visual
# o	Operator-pending
# i	Insert
# l	":lmap" mappings for Insert, Command-line and Lang-Arg
# c	Command-line
# t	Terminal-Job

debug=
[ "$1" == "-d" ] && {
  debug=1
  shift
}
CFNAME="$1"
OUT="$2"

if [ -d "${HOME}/.config/nvim-${CFNAME}" ]
then
  export NVIM_APPNAME="nvim-${CFNAME}"
else
  if [ -d "${HOME}/.config/${CFNAME}" ]
  then
    export NVIM_APPNAME="${CFNAME}"
  else
    exit 1
  fi
fi
KEYTMP="${HOME}/.config/nvim-Lazyman/tmp"
OUTDIR=$(dirname "${OUT}")

[ -d "${KEYTMP}" ] || mkdir -p "${KEYTMP}"
[ -d "${OUTDIR}" ] || mkdir -p "${OUTDIR}"

echo "local normal_mode = " > "${KEYTMP}"/${CFNAME}.lua
echo "" >> "${KEYTMP}"/${CFNAME}.lua
nvim --headless '+lua vim.print(vim.api.nvim_get_keymap("n"))' +qa >> "${KEYTMP}"/${CFNAME}.lua 2>&1
printf "\n\nlocal visual_mode = " >> "${KEYTMP}"/${CFNAME}.lua
echo "" >> "${KEYTMP}"/${CFNAME}.lua
nvim --headless '+lua vim.print(vim.api.nvim_get_keymap("x"))' +qa >> "${KEYTMP}"/${CFNAME}.lua 2>&1
printf "\n\nlocal operator_mode = " >> "${KEYTMP}"/${CFNAME}.lua
echo "" >> "${KEYTMP}"/${CFNAME}.lua
nvim --headless '+lua vim.print(vim.api.nvim_get_keymap("o"))' +qa >> "${KEYTMP}"/${CFNAME}.lua 2>&1

have_dtox=$(type -p dtox)
if [ "${have_dtox}" ]
then
  dtox "${KEYTMP}"/${CFNAME}.lua
else
  have_dos=$(type -p dos2unix)
  if [ "${have_dos}" ]
  then
    dos2unix "${KEYTMP}"/${CFNAME}.lua
  else
    echo "Unable to perform DOS to UNIX conversion"
  fi
fi

echo "" >> "${OUT}"
echo "### ${CFNAME} Keymaps" >> "${OUT}"

cat "${KEYTMP}"/${CFNAME}.lua | sed -e "s/{ {$/\n{ {/" | \
  grep -v callback | grep -v "^\[" | grep -v ^Error | \
  grep -v ^Fail | grep -v ^Some | grep -v ^\& | grep -v ^sh | \
  grep -v ^Tele | grep -v ^Lua | grep -v ^Two | grep -i -v ^vim | \
  grep -v ^stack | grep -v "[[:space:]]/home/" | grep -v ^mkdir | \
  grep -v "[[:space:]]\[C\]" | grep -v ^down | grep -v ^cwd | \
  grep -v "^\.\.\." | grep -v "[[:space:]]\.\.\." | grep -v "^\# stack" | \
  grep -v -- "[[:space:]]- " | grep -v ^Install | grep -v ^Welcome | \
  grep -v "[[:space:]]vim/" | grep -v ^run | grep -v ^plea | \
  grep -v ^Plugin | grep -v ^All | grep -v -- ^- > /tmp/${CFNAME}$$.lua
for mode in "normal" "visual" "operator"
do
  cp /tmp/${CFNAME}$$.lua "${KEYTMP}"/${CFNAME}.lua
  echo "" >> "${KEYTMP}"/${CFNAME}.lua
  echo "for k,v in pairs(${mode}_mode) do" >> "${KEYTMP}"/${CFNAME}.lua
  echo "  if v.desc ~= nil then" >> "${KEYTMP}"/${CFNAME}.lua
  echo "    io.write('| ' .. v.desc)" >> "${KEYTMP}"/${CFNAME}.lua
  echo "  else" >> "${KEYTMP}"/${CFNAME}.lua
  echo "    io.write('| ')" >> "${KEYTMP}"/${CFNAME}.lua
  echo "  end" >> "${KEYTMP}"/${CFNAME}.lua
  echo "  if v.lhs ~= nil then" >> "${KEYTMP}"/${CFNAME}.lua
  echo "    io.write(' | ' .. v.lhs)" >> "${KEYTMP}"/${CFNAME}.lua
  echo "  else" >> "${KEYTMP}"/${CFNAME}.lua
  echo "    io.write(' | ')" >> "${KEYTMP}"/${CFNAME}.lua
  echo "  end" >> "${KEYTMP}"/${CFNAME}.lua
  echo "  if v.rhs ~= nil then" >> "${KEYTMP}"/${CFNAME}.lua
  echo '    io.write(" | " .. v.rhs .. " |\n")' >> "${KEYTMP}"/${CFNAME}.lua
  echo "  else" >> "${KEYTMP}"/${CFNAME}.lua
  echo '    io.write(" |  |\n")' >> "${KEYTMP}"/${CFNAME}.lua
  echo "  end" >> "${KEYTMP}"/${CFNAME}.lua
  echo "end" >> "${KEYTMP}"/${CFNAME}.lua

  echo "" >> "${OUT}"
  echo "#### ${mode} mode keymaps" >> "${OUT}"
  echo "" >> "${OUT}"
  echo "| Description | LHS | RHS |" >> "${OUT}"
  echo "| ----------- | --- | --- |" >> "${OUT}"
  lua "${KEYTMP}"/${CFNAME}.lua >> "${OUT}"
  [ "${debug}" ] && cp "${KEYTMP}"/${CFNAME}.lua "${KEYTMP}"/${CFNAME}-debug.lua
done

rm -f "${KEYTMP}"/${CFNAME}.lua
rm -f /tmp/${CFNAME}$$.lua
