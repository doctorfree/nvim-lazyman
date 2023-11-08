#!/usr/bin/env bash
#
# Linux: download release asset and if that doesn't work build with cargo
# Mac:   install with Homebrew if available, download dmg, or build with cargo
# SC2001,SC2016,SC2006,SC2086,SC2181,SC2129,SC2059,SC2164
# shellcheck disable=SC2181

export PATH="$HOME/.local/bin:$PATH:$HOME/.cargo/bin"

have_brew=$(type -p brew)
have_cargo=$(type -p cargo)
have_wget=$(type -p wget)
have_curl=$(type -p curl)
have_jq=$(type -p jq)
have_unzip=$(type -p unzip)
platform=$(uname -s)

# Use a Github API token if one is set
[ "${GITHUB_TOKEN}" ] || {
  [ "${GH_API_TOKEN}" ] && export GITHUB_TOKEN="${GH_API_TOKEN}"
  [ "${GITHUB_TOKEN}" ] || {
    [ "${GH_TOKEN}" ] && export GITHUB_TOKEN="${GH_TOKEN}"
  }
}

if [ "${GITHUB_TOKEN}" ]; then
  AUTH_HEADER="-H \"Authorization: Bearer ${GITHUB_TOKEN}\""
else
  AUTH_HEADER=
fi

cargo_install() {
  [ "${have_cargo}" ] || {
    printf "\nNeovide build requires cargo but cargo not found.\n"
    while true; do
      read -r -p "Do you wish to install cargo now ? (y/n) " yn
      case $yn in
        [Yy]*)
          printf "\nInstalling cargo ..."
          if [ "${have_brew}" ]
          then
            brew install rust >/dev/null 2>&1
          else
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
          break
          ;;
        [Nn]*)
          printf "\nAborting cargo and neovide install\n"
          exit 1
          ;;
        *)
          printf "\nPlease answer yes or no.\n"
          ;;
      esac
    done
    have_cargo=$(type -p cargo)
  }
  if [ "${have_cargo}" ]
  then
    printf "\nBuilding Neovide GUI, please be patient ... "
    cargo install --git https://github.com/neovide/neovide >/dev/null 2>&1
    printf "done\n"
    have_neovide=$(type -p neovide)
  else
    printf "\nCannot locate cargo. Perhaps it is not in your PATH."
    printf "\nUnable to build Neovide"
  fi
}

dl_asset() {
  DLFMT="$1"
  if [ "${DLFMT}" == "tgz" ]
  then
    name="neovide-linux-x86_64"
    format="tar"
    suffix="gz"
  else
    if [ "${DLFMT}" == "dmg" ]
    then
      name="neovide"
      format="dmg"
      suffix="zip"
    else
      printf "\nUnsupported asset type"
      name=
    fi
  fi
  [ "${name}" ] || return


  OWNER=neovide
  PROJECT=neovide
  API_URL="https://api.github.com/repos/${OWNER}/${PROJECT}/releases/latest"
  DL_URL=
  [ "${have_curl}" ] && [ "${have_jq}" ] && {
    DL_URL=$(curl --silent ${AUTH_HEADER} "${API_URL}" \
      | jq --raw-output '.assets | .[]?.browser_download_url' \
      | grep "${name}\.${format}\.${suffix}$")
  }

  [ "${DL_URL}" ] && {
    [ "${have_wget}" ] && {
      printf "\nDownloading neovide release asset ..."
      if [ "${DLFMT}" == "tgz" ]
      then
        TEMP_ASS="$(mktemp --suffix=.tgz)"
      else
        TEMP_ASS="$(mktemp --suffix=.zip)"
      fi
      wget --quiet -O "${TEMP_ASS}" "${DL_URL}" >/dev/null 2>&1
      chmod 644 "${TEMP_ASS}"
      mkdir -p /tmp/neov$$
      if [ "${DLFMT}" == "tgz" ]
      then
        tar -C /tmp/neov$$ -xzf "${TEMP_ASS}"
      else
        [ "${have_unzip}" ] && {
          unzip -d /tmp/neov$$ "${TEMP_ASS}"
        }
      fi
      [ -f /tmp/neov$$/neovide ] && {
        chmod 755 /tmp/neov$$/neovide
        /tmp/neov$$/neovide --version > /dev/null 2>&1 && {
          rm -f /tmp/neovide$$
          mv /tmp/neov$$/neovide /tmp/neovide$$
        }
      }
      [ -f /tmp/neov$$/neovide.dmg ] && {
        chmod 644 /tmp/neov$$/neovide.dmg
        rm -f /tmp/neovide$$.dmg
        mv /tmp/neov$$/neovide.dmg /tmp/neovide$$.dmg
      }
      rm -f "${TEMP_ASS}"
      rm -rf /tmp/neov$$
      printf " done"
    }
  }
}

have_neovide=$(command -v neovide)
[ "${have_neovide}" ] && {
  printf "\nNeovide already installed as %s" "${have_neovide}"
  printf "\nRemove neovide and rerun this script to reinstall Neovide"
  printf "\nExiting without installing\n"
  exit 0
}
[ -d "$HOME"/.local ] || mkdir -p "$HOME"/.local
[ -d "$HOME"/.local/bin ] || mkdir -p "$HOME"/.local/bin
if [ "${platform}" == "Darwin" ]
then
  if [ "${have_brew}" ]
  then
    brew install neovide >/dev/null 2>&1
  else
    dl_asset dmg
    if [ -f /tmp/neovide$$.dmg ]
    then
      have_mount=$(type -p hdiutil)
      [ "${have_mount}" ] && {
        [ -d "$HOME"/Applications ] || mkdir -p "$HOME"/Applications
        hdiutil mount /tmp/neovide$$.dmg
        [ -d /Volumes/neovide/neovide.app ] && {
          [ -d "$HOME"/Applications/neovide.app ] && {
            rm -rf "$HOME"/Applications/neovide.app
          }
          cp -a /Volumes/neovide/neovide.app "$HOME"/Applications
          hdiutil unmount "/Volumes/neovide"
          [ -f "$HOME"/.local/bin/neovide ] && {
            rm -f "$HOME"/.local/bin/neovide
          }
          [ -f "$HOME"/Applications/neovide.app/Contents/MacOS/neovide ] && {
            ln -s "$HOME"/Applications/neovide.app/Contents/MacOS/neovide \
              ~/.local/bin/neovide
          }
        }
      }
      rm -f /tmp/neovide$$.dmg
    else
      cargo_install
    fi
  fi
else
  dl_asset tgz
  if [ -x /tmp/neovide$$ ]
  then
    mv /tmp/neovide$$ "$HOME"/.local/bin/neovide
  else
    cargo_install
  fi
fi
