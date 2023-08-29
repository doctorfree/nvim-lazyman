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
    # Check if the patch has previously been applied
    patch --directory="${confdir}" --backup \
          --forward --dry-run --silent  --strip=0 --suffix=".orig" \
          --input="${patchdir}/${confname}.patch" >/dev/null 2>&1
    [ $? -eq 0 ] && {
      patch --directory="${confdir}" --backup \
            --forward --silent --strip=0 --suffix=".orig" \
            --input="${patchdir}/${confname}.patch" >/dev/null 2>&1
    }
  }
}
