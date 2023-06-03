#!/bin/bash

patchdir="${HOME}/.config/nvim-Lazyman/scripts/patches"
confname="$1"
confdir="${HOME}/.config/${confname}"
have_patch=$(type -p patch)

[ "${have_patch}" ] || {
  printf "\n\nWARNING: Unable to apply patch for ${confname}"
  printf "\nUnable to locate the patch executable in your PATH\n"
  exit 1
}

[ -f ${patchdir}/${confname}.patch ] && {
  [ -d ${confdir} ] && {
    printf "\n"
    patch --directory="${confdir}" --quiet --backup \
          --strip=0 --suffix=".orig" --input="${patchdir}/${confname}.patch"
  }
}
