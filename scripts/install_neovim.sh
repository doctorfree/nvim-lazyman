#!/bin/bash
#
# Copyright (C) 2023 Ronald Record <ronaldrecord@gmail.com>
# Copyright (C) 2022 Michael Peter <michaeljohannpeter@gmail.com>
#
# Install Neovim and all dependencies for the Neovim config at:
#     https://github.com/doctorfree/nvim-lazyman
#
# shellcheck disable=SC2001,SC2016,SC2006,SC2086,SC2181,SC2129,SC2059

DOC_HOMEBREW="https://docs.brew.sh"
BREW_EXE="brew"
export PATH=${HOME}/.local/bin:${PATH}

abort() {
  printf "\nERROR: %s\n" "$@" >&2
  exit 1
}

log() {
  [ "$quiet" ] || {
    printf "\n\t%s" "$@"
  }
}

check_prerequisites() {
  if [ "${BASH_VERSION:-}" = "" ]; then
    abort "Bash is required to interpret this script."
  fi

  if [[ $EUID -eq 0 ]]; then
    abort "Script must not be run as root user"
  fi

  arch=$(uname -m)
  if [[ $arch =~ "arm" || $arch =~ "aarch64" ]]; then
    abort "Only amd64/x86_64 is supported"
  fi
}

install_homebrew() {
  if ! command -v brew >/dev/null 2>&1; then
    [ "$debug" ] && START_SECONDS=$(date +%s)
    log "Installing Homebrew ..."
    BREW_URL="https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh"
    have_curl=$(type -p curl)
    [ "$have_curl" ] || abort "The curl command could not be located."
    curl -fsSL "$BREW_URL" >/tmp/brew-$$.sh
    [ $? -eq 0 ] || {
      rm -f /tmp/brew-$$.sh
      curl -kfsSL "$BREW_URL" >/tmp/brew-$$.sh
    }
    [ -f /tmp/brew-$$.sh ] || abort "Brew install script download failed"
    chmod 755 /tmp/brew-$$.sh
    NONINTERACTIVE=1 /bin/bash -c "/tmp/brew-$$.sh" >/dev/null 2>&1
    rm -f /tmp/brew-$$.sh
    export HOMEBREW_NO_INSTALL_CLEANUP=1
    export HOMEBREW_NO_ENV_HINTS=1
    export HOMEBREW_NO_AUTO_UPDATE=1
    [ "$quiet" ] || printf " done"
    if [ -f "$HOME"/.profile ]; then
      BASHINIT="${HOME}/.profile"
    else
      if [ -f "$HOME"/.bashrc ]; then
        BASHINIT="${HOME}/.bashrc"
      else
        BASHINIT="${HOME}/.profile"
      fi
    fi
    if [ -x /home/linuxbrew/.linuxbrew/bin/brew ]; then
      HOMEBREW_HOME="/home/linuxbrew/.linuxbrew"
      BREW_EXE="${HOMEBREW_HOME}/bin/brew"
    else
      if [ -x /usr/local/bin/brew ]; then
        HOMEBREW_HOME="/usr/local"
        BREW_EXE="${HOMEBREW_HOME}/bin/brew"
      else
        if [ -x /opt/homebrew/bin/brew ]; then
          HOMEBREW_HOME="/opt/homebrew"
          BREW_EXE="${HOMEBREW_HOME}/bin/brew"
        else
          abort "Homebrew brew executable could not be located"
        fi
      fi
    fi

    if [ -f "$BASHINIT" ]; then
      grep "eval \"\$(${BREW_EXE} shellenv)\"" "$BASHINIT" >/dev/null || {
        echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" >>"$BASHINIT"
        echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >>"$BASHINIT"
        echo 'fi' >>"$BASHINIT"
      }
      grep "eval \"\$(zoxide init" "$BASHINIT" >/dev/null || {
        echo 'if command -v zoxide > /dev/null; then' >>"$BASHINIT"
        echo '  eval "$(zoxide init bash)"' >>"$BASHINIT"
        echo 'fi' >>"$BASHINIT"
      }
    else
      echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" >"$BASHINIT"
      echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >>"$BASHINIT"
      echo 'fi' >>"$BASHINIT"
      echo 'if command -v zoxide > /dev/null; then' >>"$BASHINIT"
      echo '  eval "$(zoxide init bash)"' >>"$BASHINIT"
      echo 'fi' >>"$BASHINIT"
    fi
    [ -f "${HOME}/.zshrc" ] && {
      grep "eval \"\$(${BREW_EXE} shellenv)\"" "${HOME}/.zshrc" >/dev/null || {
        echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" >>"${HOME}/.zshrc"
        echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >>"${HOME}/.zshrc"
        echo 'fi' >>"${HOME}/.zshrc"
      }
      grep "eval \"\$(zoxide init" "${HOME}/.zshrc" >/dev/null || {
        echo 'if command -v zoxide > /dev/null; then' >>"${HOME}/.zshrc"
        echo '  eval "$(zoxide init zsh)"' >>"${HOME}/.zshrc"
        echo 'fi' >>"${HOME}/.zshrc"
      }
    }
    eval "$("$BREW_EXE" shellenv)"
    have_brew=$(type -p brew)
    [ "$have_brew" ] && BREW_EXE="brew"
    [ "$debug" ] && {
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$((FINISH_SECONDS - START_SECONDS))
      ELAPSED=$(eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')")
      printf "\nHomebrew install elapsed time = ${ELAPSED}\n"
    }
    [ "$HOMEBREW_HOME" ] || {
      brewpath=$(command -v brew)
      if [ $? -eq 0 ]; then
        HOMEBREW_HOME=$(dirname "$brewpath" | sed -e "s%/bin$%%")
      else
        HOMEBREW_HOME="Unknown"
      fi
    }
    log "Homebrew installed in ${HOMEBREW_HOME}"
    log "See ${DOC_HOMEBREW}"
  fi
}

brew_install() {
  brewpkg="$1"
  if command -v "$brewpkg" >/dev/null 2>&1; then
    log "Using previously installed ${brewpkg} ..."
  else
    log "Installing ${brewpkg} ..."
    [ "$debug" ] && START_SECONDS=$(date +%s)
    "$BREW_EXE" install --quiet "$brewpkg" >/dev/null 2>&1
    [ $? -eq 0 ] || "$BREW_EXE" link --overwrite --quiet "$brewpkg" >/dev/null 2>&1
    if [ "$debug" ]; then
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$((FINISH_SECONDS - START_SECONDS))
      ELAPSED=$(eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')")
      printf " elapsed time = %s${ELAPSED}"
    fi
  fi
  [ "$quiet" ] || printf " done"
}

install_neovim_dependencies() {
  [ "$quiet" ] || printf "\nInstalling dependencies"
  PKGS="git curl tar unzip lazygit fd fzf xclip zoxide"
  for pkg in $PKGS; do
    if command -v "$pkg" >/dev/null 2>&1; then
      log "Using previously installed ${pkg}"
    else
      brew_install "$pkg"
    fi
  done
  if command -v rg >/dev/null 2>&1; then
    log "Using previously installed ripgrep"
  else
    brew_install ripgrep
  fi
  [ "$quiet" ] || printf "\n"
}

install_neovim_head() {
  "$BREW_EXE" link -q libuv >/dev/null 2>&1
  log "Compiling and installing Neovim, please be patient ..."
  if [ "$debug" ]; then
    START_SECONDS=$(date +%s)
    "$BREW_EXE" install neovim
    "$BREW_EXE" install neovim-remote
  else
    "$BREW_EXE" install -q neovim >/dev/null 2>&1
    "$BREW_EXE" install -q neovim-remote >/dev/null 2>&1
  fi
  if [ "$debug" ]; then
    FINISH_SECONDS=$(date +%s)
    ELAPSECS=$((FINISH_SECONDS - START_SECONDS))
    ELAPSED=$(eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')")
    printf "\nInstall Neovim elapsed time = %s${ELAPSED}\n"
  fi
  [ "$quiet" ] || printf " done"
}

check_python() {
  brew_path=$(command -v brew)
  brew_dir=$(dirname "$brew_path")
  if [ -x "$brew_dir"/python3 ]; then
    PYTHON="${brew_dir}/python3"
  else
    PYTHON=$(command -v python3)
  fi
}

# Brew doesn't create a python symlink so we do so here
link_python() {
  python3_path=$(command -v python3)
  [ "$python3_path" ] && {
    python_dir=$(dirname "$python3_path")
    if [ -w "$python_dir" ]; then
      rm -f "$python_dir"/python
      ln -s "$python_dir"/python3 "$python_dir"/python
    else
      sudo rm -f "$python_dir"/python
      sudo ln -s "$python_dir"/python3 "$python_dir"/python
    fi
  }
}

# Language servers are also being installed by Mason
install_language_servers() {
  [ "$quiet" ] || printf "\nInstalling language servers and tools"

  brew_install ccls
  "$BREW_EXE" link --overwrite --quiet ccls >/dev/null 2>&1

  for pkg in golangci-lint rust-analyzer taplo eslint \
    yarn julia composer php deno; do
    brew_install "$pkg"
  done

  [ "$PYTHON" ] && {
    "$PYTHON" -m pip install python-lsp-server >/dev/null 2>&1
  }
  if command -v go >/dev/null 2>&1; then
    go install golang.org/x/tools/gopls@latest >/dev/null 2>&1
  fi
  [ "$quiet" ] || printf "\nDone"
}

install_tools() {
  [ "$quiet" ] || printf "\nInstalling Python dependencies"
  check_python
  [ "$PYTHON" ] || {
    # Could not find Python, install with Homebrew
    log 'Installing Python with Homebrew ...'
    "$BREW_EXE" install --quiet python >/dev/null 2>&1
    [ $? -eq 0 ] || "$BREW_EXE" link --overwrite --quiet python >/dev/null 2>&1
    link_python
    check_python
    [ "$quiet" ] || printf " done"
  }
  [ "$PYTHON" ] && {
    log 'Upgrading pip, setuptools, wheel, doq, and pynvim ...'
    "$PYTHON" -m pip install --upgrade pip >/dev/null 2>&1
    "$PYTHON" -m pip install --upgrade setuptools >/dev/null 2>&1
    "$PYTHON" -m pip install wheel >/dev/null 2>&1
    "$PYTHON" -m pip install pynvim doq >/dev/null 2>&1
    [ "$quiet" ] || printf " done"
  }
  [ "$quiet" ] || printf "\nDone"

  [ "$quiet" ] || printf "\nInstalling npm and treesitter dependencies"
  have_npm=$(type -p npm)
  [ "$have_npm" ] && {
    log "Installing Neovim npm package ..."
    npm i -g neovim >/dev/null 2>&1
    [ "$quiet" ] || printf " done"

    log "Installing the icon font for Visual Studio Code ..."
    npm i -g @vscode/codicons >/dev/null 2>&1
    [ "$quiet" ] || printf " done"
  }

  if command -v "cargo" >/dev/null 2>&1; then
    log "Using previously installed cargo ..."
  else
    log "Installing cargo ..."
    [ "$debug" ] && START_SECONDS=$(date +%s)
    "$BREW_EXE" install --quiet "rust" >/dev/null 2>&1
    [ $? -eq 0 ] || "$BREW_EXE" link --overwrite --quiet "rust" >/dev/null 2>&1
    if [ "$debug" ]; then
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$((FINISH_SECONDS - START_SECONDS))
      ELAPSED=$(eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')")
      printf " elapsed time = %s${ELAPSED}"
    fi
  fi

  brew_install figlet
  brew_install lolcat
  if command -v "rich" >/dev/null 2>&1; then
    log "Using previously installed rich-cli ..."
  else
    log "Installing rich-cli ..."
    [ "$debug" ] && START_SECONDS=$(date +%s)
    "$BREW_EXE" install --quiet "rich-cli" >/dev/null 2>&1
    [ $? -eq 0 ] || "$BREW_EXE" link --overwrite --quiet "rich-cli" >/dev/null 2>&1
    if [ "$debug" ]; then
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$((FINISH_SECONDS - START_SECONDS))
      ELAPSED=$(eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')")
      printf " elapsed time = %s${ELAPSED}"
    fi
  fi
  [ "$quiet" ] || printf " done"
  brew_install tree-sitter
  if command -v tree-sitter >/dev/null 2>&1; then
    tree-sitter init-config >/dev/null 2>&1
  fi

  GHUC="https://raw.githubusercontent.com"
  JETB_URL="${GHUC}/JetBrains/JetBrainsMono/master/install_manual.sh"
  [ "$quiet" ] || printf "\n\tInstalling JetBrains Mono font ... "
  curl -fsSL "$JETB_URL" >/tmp/jetb-$$.sh
  [ $? -eq 0 ] || {
    rm -f /tmp/jetb-$$.sh
    curl -kfsSL "$JETB_URL" >/tmp/jetb-$$.sh
  }
  [ -f /tmp/jetb-$$.sh ] && {
    chmod 755 /tmp/jetb-$$.sh
    /bin/bash -c "/tmp/jetb-$$.sh" >/dev/null 2>&1
    rm -f /tmp/jetb-$$.sh
  }
  [ "$quiet" ] || printf "done\nDone\n"
}

main() {
  check_prerequisites
  if command -v nvim >/dev/null 2>&1; then
    nvim_version=$(nvim --version | head -1 | grep -o '[0-9]\.[0-9]')
    if (($(echo "$nvim_version < 0.9 " | bc -l))); then
      printf "\nCurrently installed Neovim is less than version 0.9"
      [ "$nvim_head" ] && {
        install_homebrew
        install_neovim_dependencies
        install_language_servers
        install_tools
        printf "\nInstalling latest Neovim version with Homebrew"
        install_neovim_head
      }
    fi
  else
    install_homebrew
    install_neovim_dependencies
    install_language_servers
    install_tools
    printf "\nNeovim not found, installing Neovim with Homebrew"
    if [ "$nvim_head" ]; then
      install_neovim_head
    else
      brew_install neovim
      brew_install nvr
    fi
  fi
}

nvim_head=1
quiet=
debug=

while getopts "dhq" flag; do
  case $flag in
    d)
      debug=1
      ;;
    h)
      nvim_head=
      ;;
    q)
      quiet=1
      ;;
    *) ;;
  esac
done

currlimit=$(ulimit -n)
hardlimit=$(ulimit -Hn)
[ "$hardlimit" == "unlimited" ] && hardlimit=9999
if [ "$hardlimit" -gt 4096 ]; then
  ulimit -n 4096
else
  ulimit -n "$hardlimit"
fi

[ "$debug" ] && MAIN_START_SECONDS=$(date +%s)

main

[ "$debug" ] && {
  MAIN_FINISH_SECONDS=$(date +%s)
  MAIN_ELAPSECS=$((MAIN_FINISH_SECONDS - MAIN_START_SECONDS))
  MAIN_ELAPSED=$(eval "echo $(date -ud "@$MAIN_ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')")
  printf "\nTotal elapsed time = %s${MAIN_ELAPSED}\n"
}

ulimit -n "$currlimit"
