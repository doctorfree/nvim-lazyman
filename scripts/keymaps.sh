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
SED="sed"
have_gsed=$(type -p gsed)
[ "${have_gsed}" ] && SED="gsed"

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

# Use TMPDIR or TEMPDIR if they are set, otherwise /tmp
TMP=
if [ "${TMPDIR}" ]; then
  [ -d "${TMPDIR}" ] && TMP="${TMPDIR}"
else
  [ "${TEMPDIR}" ] && [ -d "${TEMPDIR}" ] && TMP="${TEMPDIR}"
fi
[ "${TMP}" ] || TMP="/tmp"
export TMPDIR="${TMP}"

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
echo "## ${CFNAME} Keymaps" >> "${OUT}"

cat "${KEYTMP}"/${CFNAME}.lua | ${SED} -e "s/{ {$/\n{ {/" | \
  ${SED} -e "s/\[nvim-treesitter.*//" -e "s/|/\&#124;/" | \
  ${SED} -e "s/</\&lt;/g" -e "s/>/\&gt;/g" | \
  grep -v callback | grep -v "^\[" | grep -v ^Dep | grep -v ^Error | \
  grep -v ^Fail | grep -v ^Some | grep -v ^\& | grep -v ^sh | \
  grep -v ^Tele | grep -v ^Lua | grep -v ^Two | grep -i -v ^vim | \
  grep -v ^stack | grep -v "[[:space:]]/home/" | grep -v ^mkdir | \
  grep -v "[[:space:]]\[C\]" | grep -v ^down | grep -v ^cwd | \
  grep -v "^\.\.\." | grep -v "[[:space:]]\.\.\." | grep -v "^\# stack" | \
  grep -v -- "[[:space:]]- " | grep -v ^Install | grep -v ^Welcome | \
  grep -v "[[:space:]]vim/" | grep -v ^run | grep -v ^plea | \
  grep -v ^Plugin | grep -v ^All | grep -v -- ^- | \
  grep -v "^$(printf '\t')" | grep -v ^line > ${TMPDIR}/${CFNAME}$$.lua
for mode in "normal" "visual" "operator"
do
  cp ${TMPDIR}/${CFNAME}$$.lua "${KEYTMP}"/${CFNAME}.lua
  echo "" >> "${KEYTMP}"/${CFNAME}.lua
  echo "for k,v in pairs(${mode}_mode) do" >> "${KEYTMP}"/${CFNAME}.lua
  echo '  local lstr = ""' >> "${KEYTMP}"/${CFNAME}.lua
  echo "  if v.lhs ~= nil then" >> "${KEYTMP}"/${CFNAME}.lua
  echo '    lstr = v.lhs:gsub("%s", "")' >> "${KEYTMP}"/${CFNAME}.lua
  echo "  end" >> "${KEYTMP}"/${CFNAME}.lua
  echo '  local rstr = ""' >> "${KEYTMP}"/${CFNAME}.lua
  echo "  if v.rhs ~= nil then" >> "${KEYTMP}"/${CFNAME}.lua
  echo '    rstr = v.rhs:gsub("%s", "")' >> "${KEYTMP}"/${CFNAME}.lua
  echo "  end" >> "${KEYTMP}"/${CFNAME}.lua
  echo '  if lstr ~= "" or rstr ~= "" then' >> "${KEYTMP}"/${CFNAME}.lua
  echo "  if v.desc ~= nil then" >> "${KEYTMP}"/${CFNAME}.lua
  echo "    io.write('| **Description** | ' .. v.desc .. ' |' .. \"\n\")" >> "${KEYTMP}"/${CFNAME}.lua
  echo "  else" >> "${KEYTMP}"/${CFNAME}.lua
  echo "    io.write('| **Description** | |' .. \"\n\")" >> "${KEYTMP}"/${CFNAME}.lua
  echo "  end" >> "${KEYTMP}"/${CFNAME}.lua
  echo "  io.write('| :---- | :---- |' .. \"\n\")" >> "${KEYTMP}"/${CFNAME}.lua
  echo "  if v.lhs ~= nil then" >> "${KEYTMP}"/${CFNAME}.lua
  echo "    io.write('| **Left hand side** | <code>' .. v.lhs .. '</code> |' .. \"\n\")" >> "${KEYTMP}"/${CFNAME}.lua
  echo "  else" >> "${KEYTMP}"/${CFNAME}.lua
  echo "    io.write('| **Left hand side** | |' .. \"\n\")" >> "${KEYTMP}"/${CFNAME}.lua
  echo "  end" >> "${KEYTMP}"/${CFNAME}.lua
  echo "  if v.rhs ~= nil then" >> "${KEYTMP}"/${CFNAME}.lua
  echo "    io.write('| **Right hand side** | <code>' .. v.rhs .. '</code> |' .. \"\n\n\")" >> "${KEYTMP}"/${CFNAME}.lua
  echo "  else" >> "${KEYTMP}"/${CFNAME}.lua
  echo "    io.write('| **Right hand side** | |' .. \"\n\n\")" >> "${KEYTMP}"/${CFNAME}.lua
  echo "  end" >> "${KEYTMP}"/${CFNAME}.lua
  echo "  end" >> "${KEYTMP}"/${CFNAME}.lua
  echo "end" >> "${KEYTMP}"/${CFNAME}.lua

  echo "" >> "${OUT}"
  modename="$(tr '[:lower:]' '[:upper:]' <<< ${mode:0:1})${mode:1}"
  echo "### ${modename} mode keymaps" >> "${OUT}"
  echo "" >> "${OUT}"
  lua "${KEYTMP}"/${CFNAME}.lua >> "${OUT}"
  [ "${debug}" ] && cp "${KEYTMP}"/${CFNAME}.lua "${KEYTMP}"/${CFNAME}-debug.lua
done

rm -f "${KEYTMP}"/${CFNAME}.lua
rm -f ${TMPDIR}/${CFNAME}$$.lua
