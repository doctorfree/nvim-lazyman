#!/usr/bin/env bash
#
# Uninstall Bob Neovim version manager
#

export PATH=${HOME}/.local/bin:${PATH}

have_brew=$(type -p brew)
have_curl=$(type -p curl)
if command -v "cargo" >/dev/null 2>&1; then
  printf "\n\tUsing previously installed cargo"
else
  printf "\n\tInstalling cargo ..."
  if [ "${have_brew}" ]; then
    brew install --quiet "rust" >/dev/null 2>&1
    [ $? -eq 0 ] || brew link --overwrite --quiet "rust" >/dev/null 2>&1
  else
    [ "${have_curl}" ] || {
      printf "\n\tCargo installation requires either Homebrew or curl."
      printf "\n\tExiting without installing bob.\n"
      exit 1
    }
    RUST_URL="https://sh.rustup.rs"
    curl -fsSL "${RUST_URL}" >/tmp/rust-$$.sh
    [ $? -eq 0 ] || {
      rm -f /tmp/rust-$$.sh
      curl -kfsSL "${RUST_URL}" >/tmp/rust-$$.sh
      [ -f /tmp/rust-$$.sh ] && {
        cat /tmp/rust-$$.sh | sed -e "s/--show-error/--insecure --show-error/" >/tmp/ins$$
        cp /tmp/ins$$ /tmp/rust-$$.sh
        rm -f /tmp/ins$$
      }
    }
    [ -f /tmp/rust-$$.sh ] && sh /tmp/rust-$$.sh -y >/dev/null 2>&1
    rm -f /tmp/rust-$$.sh
  fi
  printf " done"
fi
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
  exit 1
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
