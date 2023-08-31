#!/usr/bin/env bash
#
# Uninstall Bob Neovim version manager
#

export PATH=${HOME}/.local/bin:${PATH}

if ! command -v "cargo" >/dev/null 2>&1; then
  [ -x "${HOME}"/.cargo/bin/cargo ] && {
    export PATH="$HOME/.cargo/bin:$PATH"
  }
fi

if command -v "bob" >/dev/null 2>&1; then
  bob erase >/dev/null 2>&1
fi
if command -v "cargo" >/dev/null 2>&1; then
  printf "\n\tUninstalling bob ..."
  cargo uninstall bob-nvim >/dev/null 2>&1
  printf " done\n"
else
  printf "\n\tCannot locate cargo. Skipping uninstall of bob.\n"
fi

INSTNVIM="${HOME}/.config/nvim-Lazyman/scripts/install_neovim.sh"
if [ -x "${INSTNVIM}" ]
then
  printf "\n\tInstalling neovim and dependencies ..."
  ${INSTNVIM} -y -q
else
  have_lman=$(type -p lazyman)
  if [ "${have_lman}" ]; then
    lazyman -I
  else
    printf "\n\tWARNING: Unable to locate ${INSTNVIM}"
    printf "\n\tInstall Neovim manually, reinstall Lazyman, or run 'lazyman -I'"
  fi
fi

exit 0
