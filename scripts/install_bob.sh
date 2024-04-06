#!/usr/bin/env bash
#
# Install Bob Neovim version manager
#

export PATH=/opt/homebrew/bin:${HOME}/.local/bin:${PATH}
SED="sed"
have_gsed=$(type -p gsed)
[ "${have_gsed}" ] && SED="gsed"

if command -v bob >/dev/null 2>&1; then
  printf "\n\tUsing existing bob installation.\n"
  exit 0
fi

have_brew=$(type -p brew)
have_curl=$(type -p curl)
[ "${have_brew}" ] && {
  brew update --quiet >/dev/null 2>&1
  printf "\n\tInstalling bob with Homebrew, please be patient ..."
  brew install --quiet "bob" >/dev/null 2>&1
  have_bob=$(type -p bob)
  [ "${have_bob}" ] && {
    printf " done\n"
    exit 0
  }
  printf " fail\n"
}
if command -v "cargo" >/dev/null 2>&1; then
  if [ "${have_brew}" ]; then
    printf "\n\tUpdating rust, please be patient ..."
    brew upgrade --quiet "rust" >/dev/null 2>&1
    printf " done\n"
  else
    have_rust=$(type -p rustup)
    [ "${have_rust}" ] && {
      printf "\n\tUpdating rustc, please be patient ..."
      rustup update >/dev/null 2>&1
      printf " done\n"
    }
  fi
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
        cat /tmp/rust-$$.sh | ${SED} -e "s/--show-error/--insecure --show-error/" >/tmp/ins$$
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

if ! command -v bob >/dev/null 2>&1; then
  if command -v "cargo" >/dev/null 2>&1; then
    printf "\n\tInstalling bob with cargo, please be patient ..."
    cargo install bob-nvim >/dev/null 2>&1
    printf " done\n"

    printf "Adding bob to PATH in shell initialization file(s)"
    if [ -f "${HOME}/.bashrc" ]; then
      grep "local/share/bob/nvim-bin" "${HOME}/.bashrc" >/dev/null || {
        echo '# Bob neovim version manager path' >>"${HOME}/.bashrc"
        echo '[ -d ${HOME}/.local/share/bob/nvim-bin ] && {' >>"${HOME}/.bashrc"
        echo '  export PATH="${HOME}/.local/share/bob/nvim-bin${PATH:+:${PATH}}"' >>"${HOME}/.bashrc"
        echo '}' >>"${HOME}/.bashrc"
      }
    else
      echo '# Bob neovim version manager path' >"${HOME}/.bashrc"
      echo '[ -d ${HOME}/.local/share/bob/nvim-bin ] && {' >>"${HOME}/.bashrc"
      echo '  export PATH="${HOME}/.local/share/bob/nvim-bin${PATH:+:${PATH}}"' >>"${HOME}/.bashrc"
      echo '}' >>"${HOME}/.bashrc"
    fi
    [ -f "${HOME}/.zshrc" ] && {
      grep "local/share/bob/nvim-bin" "${HOME}/.zshrc" >/dev/null || {
        echo '# Bob neovim version manager path' >>"${HOME}/.zshrc"
        echo '[ -d ${HOME}/.local/share/bob/nvim-bin ] && {' >>"${HOME}/.zshrc"
        echo '  export PATH="${HOME}/.local/share/bob/nvim-bin${PATH:+:${PATH}}"' >>"${HOME}/.zshrc"
        echo '}' >>"${HOME}/.zshrc"
      }
    }

    have_nvim=$(type -p nvim)
    if [ "${have_nvim}" ]
    then
      printf "\nBob requires removal of any previously installed Neovim."
      printf "\nWould you like to remove Neovim and install it with Bob?\n"
      PROMPT="Remove and Install"
    else
      printf "\nWould you like to install Neovim with Bob?\n"
      PROMPT="Install"
    fi
    while true; do
      read -r -p "${PROMPT} Neovim ? (y/n) " yn
      case $yn in
        [Yy]*)
          have_bob=$(type -p bob)
          [ "${have_bob}" ] || {
            [ -x "${HOME}"/.cargo/bin/bob ] && {
              have_bob="${HOME}/.cargo/bin/bob"
              export PATH="$HOME/.cargo/bin:$PATH"
            }
          }
          if [ "${have_bob}" ]
          then
            rm -f ${HOME}/.local/bin/nvim
            rm -rf ${HOME}/.local/lib/nvim
            rm -rf ${HOME}/.local/share/nvim/runtime
            rm -rf ${HOME}/.local/state/nvim/shada
            bob use latest
          else
            printf "\nCannot locate bob. Check your execution PATH"
            printf "\nand run the command 'bob use latest'"
          fi
          break
          ;;
        [Nn]*)
          printf "\nManage Neovim versions with the 'bob' command\n"
          break
          ;;
        *)
          printf "\nPlease answer yes or no.\n"
          ;;
      esac
    done
    printf "\nIn order to use the Bob Neovim version manager you will need to"
    printf "\nsource your shell initialization file (e.g. 'source ~/.bashrc')"
    printf "\nor logout and login\n"
  else
    printf "\n\tCannot locate cargo. Skipping installation of bob.\n"
    exit 1
  fi
else
  printf "\n\tUsing existing bob installation.\n"
fi

exit 0
