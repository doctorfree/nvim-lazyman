#!/usr/bin/env bash
#
# Update Bob Neovim version manager
#

export PATH=${HOME}/.local/bin:${PATH}

have_brew=$(type -p brew)
have_curl=$(type -p curl)
[ "${have_brew}" ] && brew update --quiet >/dev/null 2>&1
if command -v "cargo" >/dev/null 2>&1; then
  printf "\n\tUsing previously installed cargo"
else
  printf "\n\tInstalling cargo ..."
  if [ "${have_brew}" ]; then
    brew install --quiet "rust" >/dev/null 2>&1
  # [ $? -eq 0 ] || brew link --overwrite --quiet "rust" >/dev/null 2>&1
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
if [ "${have_brew}" ]; then
  printf "\nUpdating rust, please be patient ..."
  brew upgrade --quiet "rust" >/dev/null 2>&1
  printf " done\n"
else
  have_rust=$(type -p rustup)
  [ "${have_rust}" ] && {
    printf "\nUpdating rustc, please be patient ..."
    rustup update >/dev/null 2>&1
    printf " done\n"
  }
fi

if command -v "cargo" >/dev/null 2>&1; then
  printf "\nUpdating bob with cargo, please be patient ..."
  cargo install bob-nvim >/dev/null 2>&1
  printf " done\n"
else
  printf "\n\tCannot locate cargo. Skipping update of bob.\n"
  exit 1
fi

exit 0
