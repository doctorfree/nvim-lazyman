#!/bin/bash

patchdir="${HOME}/.config/nvim-Lazyman/scripts/patches"
have_patch=$(type -p patch)
SED="sed"
have_gsed=$(type -p gsed)
[ "${have_gsed}" ] && SED="gsed"

[ "${have_patch}" ] || {
  printf "\n\nWARNING: Unable to apply patch for ${confname}"
  printf "\nUnable to locate the patch executable in your PATH\n"
  exit 1
}
debug=
[ "$1" == "-d" ] && {
  debug=1
  shift
}
config="$1"

for patch in ${patchdir}/*.patch
do
  [ "${patch}" == "${patchdir}/*.patch" ] && {
    echo "No patches found in $patchdir"
    echo "Exiting"
    exit 1
  }
  confname=$(basename ${patch} | ${SED} -e "s/.patch//")
  [ "${config}" ] && {
    [ "${config}" == "${confname}" ] || continue
  }
  confdir="${HOME}/.config/${confname}"
  [ -f ${patchdir}/${confname}.patch ] && {
    [ -d ${confdir} ] && {
      # Check if the patch has previously been applied
      if [ "${debug}" ]
      then
        patch --directory="${confdir}" --backup \
              --forward --dry-run --silent  --strip=0 --suffix=".orig" \
              --input="${patchdir}/${confname}.patch"
      else
        patch --directory="${confdir}" --backup \
              --forward --dry-run --silent  --strip=0 --suffix=".orig" \
              --input="${patchdir}/${confname}.patch" >/dev/null 2>&1
        if [ $? -eq 0 ]
        then
          echo "${confname}.patch ok"
        else
          echo "${confname}.patch failed"
        fi
      fi
    }
  }
  [ "${config}" ] && exit 0
done
