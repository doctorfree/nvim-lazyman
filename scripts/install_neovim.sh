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

abort () {
  printf "\nERROR: %s\n" "$@" >&2
  exit 1
}

log () {
  [ "${quiet}" ] || {
    printf "\n\t%s" "$@"
  }
}

check_prerequisites () {
  if [ -z "${BASH_VERSION:-}" ]; then
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

install_brew () {
  if ! command -v brew >/dev/null 2>&1; then
    [ "${debug}" ] && START_SECONDS=$(date +%s)
    log "Installing Homebrew, please be patient ..."
    BREW_URL="https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh"
    have_curl=$(type -p curl)
    [ "${have_curl}" ] || abort "The curl command could not be located."
    curl -fsSL "${BREW_URL}" > /tmp/brew-$$.sh
    [ $? -eq 0 ] || {
      rm -f /tmp/brew-$$.sh
      curl -kfsSL "${BREW_URL}" > /tmp/brew-$$.sh
    }
    [ -f /tmp/brew-$$.sh ] || abort "Brew install script download failed"
    chmod 755 /tmp/brew-$$.sh
    NONINTERACTIVE=1 /bin/bash -c "/tmp/brew-$$.sh" > /dev/null 2>&1
    rm -f /tmp/brew-$$.sh
    export HOMEBREW_NO_INSTALL_CLEANUP=1
    export HOMEBREW_NO_ENV_HINTS=1
    export HOMEBREW_NO_AUTO_UPDATE=1
    printf " done"
    if [ -f ${HOME}/.profile ]
    then
      BASHINIT="${HOME}/.profile"
    else
      if [ -f ${HOME}/.bashrc ]
      then
        BASHINIT="${HOME}/.bashrc"
      else
        BASHINIT="${HOME}/.profile"
      fi
    fi
    if [ -x /home/linuxbrew/.linuxbrew/bin/brew ]
    then
      HOMEBREW_HOME="/home/linuxbrew/.linuxbrew"
      BREW_EXE="${HOMEBREW_HOME}/bin/brew"
    else
      if [ -x /usr/local/bin/brew ]
      then
        HOMEBREW_HOME="/usr/local"
        BREW_EXE="${HOMEBREW_HOME}/bin/brew"
      else
        if [ -x /opt/homebrew/bin/brew ]
        then
          HOMEBREW_HOME="/opt/homebrew"
          BREW_EXE="${HOMEBREW_HOME}/bin/brew"
        else
          abort "Homebrew brew executable could not be located"
        fi
      fi
    fi

    if [ -f "${BASHINIT}" ]
    then
      grep "^eval \"\$(${BREW_EXE} shellenv)\"" "${BASHINIT}" > /dev/null || {
        echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" >> "${BASHINIT}"
        echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >> "${BASHINIT}"
        echo 'fi' >> "${BASHINIT}"
      }
      grep "^eval \"\$(zoxide init" "${BASHINIT}" > /dev/null || {
        echo 'if command -v zoxide > /dev/null; then' >> "${BASHINIT}"
        echo '  eval "$(zoxide init bash)"' >> "${BASHINIT}"
        echo 'fi' >> "${BASHINIT}"
      }
    else
      echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" > "${BASHINIT}"
      echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >> "${BASHINIT}"
      echo 'fi' >> "${BASHINIT}"
      echo 'if command -v zoxide > /dev/null; then' >> "${BASHINIT}"
      echo '  eval "$(zoxide init bash)"' >> "${BASHINIT}"
      echo 'fi' >> "${BASHINIT}"
    fi
    [ -f "${HOME}/.zshrc" ] && {
      grep "^eval \"\$(${BREW_EXE} shellenv)\"" "${HOME}/.zshrc" > /dev/null || {
        echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" >> "${HOME}/.zshrc"
        echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >> "${HOME}/.zshrc"
        echo 'fi' >> "${HOME}/.zshrc"
      }
      grep "^eval \"\$(zoxide init" "${HOME}/.zshrc" > /dev/null || {
        echo 'if command -v zoxide > /dev/null; then' >> "${HOME}/.zshrc"
        echo '  eval "$(zoxide init zsh)"' >> "${HOME}/.zshrc"
        echo 'fi' >> "${HOME}/.zshrc"
      }
    }
    eval "$(${BREW_EXE} shellenv)"
    have_brew=`type -p brew`
    [ "${have_brew}" ] && BREW_EXE="brew"
    [ "${debug}" ] && {
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
      ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
      printf "\nHomebrew install elapsed time = ${ELAPSED}\n"
    }
  fi
  [ "${HOMEBREW_HOME}" ] || {
    brewpath=$(command -v brew)
    if [ $? -eq 0 ]
    then
      HOMEBREW_HOME=`dirname ${brewpath} | sed -e "s%/bin$%%"`
    else
      HOMEBREW_HOME="Unknown"
    fi
  }
  log "Homebrew installed in ${HOMEBREW_HOME}"
  log "See ${DOC_HOMEBREW}"
  # log "Installing Homebrew gcc, cmake, and make ..."
  # if [ "${debug}" ]
  # then
	# for tool in gcc cmake make
	# do
  #     START_SECONDS=$(date +%s)
  #     ${BREW_EXE} install ${tool}
  #     FINISH_SECONDS=$(date +%s)
  #     ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
  #     ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
  #     printf "\nInstall ${tool} elapsed time = %s${ELAPSED}\n"
	# done
  # START_SECONDS=$(date +%s)
  # ${BREW_EXE} uninstall --ignore-dependencies llvm
  # ${BREW_EXE} install llvm@14
  # ${BREW_EXE} link llvm@14
  # FINISH_SECONDS=$(date +%s)
  # ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
  # ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
  # printf "\nInstall llvm elapsed time = %s${ELAPSED}\n"
  # else
  # ${BREW_EXE} install --quiet gcc > /dev/null 2>&1
  # ${BREW_EXE} install --quiet cmake > /dev/null 2>&1
  # ${BREW_EXE} install --quiet make > /dev/null 2>&1
  # ${BREW_EXE} uninstall --ignore-dependencies llvm > /dev/null 2>&1
  # ${BREW_EXE} install --quiet llvm@14 > /dev/null 2>&1
  # ${BREW_EXE} link llvm@14 > /dev/null 2>&1
  # fi
  # printf " done"
}

install_neovim_dependencies () {
  log "Installing dependencies ..."
  PKGS="git curl tar unzip lazygit fd ripgrep fzf xclip zoxide"
  for pkg in ${PKGS}
  do
	have_pkg=$(type -p ${pkg})
	[ "${have_pkg}" ] || {
      if [ "${debug}" ]
      then
        START_SECONDS=$(date +%s)
        ${BREW_EXE} install ${pkg}
        FINISH_SECONDS=$(date +%s)
        ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
        ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
        printf "\nInstall ${pkg} elapsed time = %s${ELAPSED}\n"
      else
        ${BREW_EXE} install --quiet ${pkg} > /dev/null 2>&1
        [ $? -eq 0 ] || ${BREW_EXE} link --overwrite --quiet ${pkg} > /dev/null 2>&1
      fi
	}
  done
  printf " done"
}

install_neovim_head () {
  log "Installing Neovim HEAD, please be patient ..."
  if [ "${debug}" ]
  then
    START_SECONDS=$(date +%s)
    ${BREW_EXE} install --HEAD neovim
    FINISH_SECONDS=$(date +%s)
    ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
    ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
    printf "\nInstall Neovim elapsed time = %s${ELAPSED}\n"
  else
    ${BREW_EXE} install -q --HEAD neovim > /dev/null 2>&1
  fi
  printf " done"
}

check_python () {
  brew_path=$(command -v brew)
  brew_dir=$(dirname ${brew_path})
  if [ -x ${brew_dir}/python3 ]
  then
    PYTHON="${brew_dir}/python3"
  else
    PYTHON=$(command -v python3)
  fi
}

# Brew doesn't create a python symlink so we do so here
link_python () {
  python3_path=$(command -v python3)
  [ "${python3_path}" ] && {
    python_dir=`dirname ${python3_path}`
    if [ -w ${python_dir} ]
    then
      rm -f ${python_dir}/python
      ln -s ${python_dir}/python3 ${python_dir}/python
    else
      sudo rm -f ${python_dir}/python
      sudo ln -s ${python_dir}/python3 ${python_dir}/python
    fi
  }
}

install_language_servers() {
	# These are installed by Mason, no need to install them here
	#
  # bash-language-server black clangd jdtls lua-language-server
	# marksman prettier shellcheck shfmt sql-language-server stylua
	# texlab yaml-language-server
  log "Installing language servers ..."
  have_npm=$(type -p npm)
  [ "${have_npm}" ] && {
    # python language server
    npm i -g pyright > /dev/null 2>&1
    # typescript language server
    npm i -g typescript typescript-language-server > /dev/null 2>&1
    # awk language server
    npm i -g awk-language-server > /dev/null 2>&1
    # css language server
    npm i -g cssmodules-language-server > /dev/null 2>&1
    # vim language server
    npm i -g vim-language-server > /dev/null 2>&1
    # docker language server
    npm i -g dockerfile-language-server-nodejs > /dev/null 2>&1
    # vscode-langservers bin collection, includes:
    # vscode-html-language-server
    # vscode-css-language-server
    # vscode-json-language-server
    # vscode-eslint-language-server
    npm i -g vscode-langservers-extracted > /dev/null 2>&1
    # Improve eslint performance
    npm i -g eslint_d > /dev/null 2>&1
    [ "${debug}" ] && {
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
      ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
      printf "\nNpm tools install elapsed time = %s${ELAPSED}\n"
    }
	}
  # brew installed language servers
  for server in ansible bash haskell sql lua yaml
  do
    if [ "${debug}" ]
    then
      START_SECONDS=$(date +%s)
      ${BREW_EXE} install ${server}-language-server
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
      ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
      printf "\nInstall ${server}-language-server elapsed time = %s${ELAPSED}\n"
    else
      ${BREW_EXE} install -q ${server}-language-server > /dev/null 2>&1
    fi
  done
  if [ "${debug}" ]
  then
    START_SECONDS=$(date +%s)
    ${BREW_EXE} install ccls
    ${BREW_EXE} link --overwrite ccls
    FINISH_SECONDS=$(date +%s)
    ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
    ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
    printf "\nInstall ccls elapsed time = %s${ELAPSED}\n"
  else
    ${BREW_EXE} install -q ccls > /dev/null 2>&1
    ${BREW_EXE} link --overwrite --quiet ccls > /dev/null 2>&1
  fi
  if [ "${debug}" ]
  then
    for pkg in golangci-lint rust-analyzer \
        taplo eslint terraform \
				yarn julia composer php deno
    do
      START_SECONDS=$(date +%s)
      ${BREW_EXE} install ${pkg}
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
      ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
      printf "\nInstall ${pkg} elapsed time = %s${ELAPSED}\n"
    done
  else
    ${BREW_EXE} install -q golangci-lint > /dev/null 2>&1
    ${BREW_EXE} install -q rust-analyzer > /dev/null 2>&1
    ${BREW_EXE} install -q taplo > /dev/null 2>&1
    ${BREW_EXE} install -q eslint > /dev/null 2>&1
    ${BREW_EXE} install -q terraform > /dev/null 2>&1
    ${BREW_EXE} install -q yarn > /dev/null 2>&1
    ${BREW_EXE} install -q julia > /dev/null 2>&1
    ${BREW_EXE} install -q composer > /dev/null 2>&1
    ${BREW_EXE} install -q php > /dev/null 2>&1
    ${BREW_EXE} install -q deno > /dev/null 2>&1
  fi
  [ "${PYTHON}" ] && {
    ${PYTHON} -m pip install cmake-language-server > /dev/null 2>&1
    ${PYTHON} -m pip install python-lsp-server > /dev/null 2>&1
  }
  if command -v go >/dev/null 2>&1; then
    go install golang.org/x/tools/gopls@latest > /dev/null 2>&1
  fi
  printf " done"
}

install_tools() {
  check_python
  [ "${PYTHON}" ] || {
    # Could not find Python, install with Homebrew
    log 'Installing Python with Homebrew ...'
    ${BREW_EXE} install --quiet python > /dev/null 2>&1
    [ $? -eq 0 ] || ${BREW_EXE} link --overwrite --quiet python > /dev/null 2>&1
    link_python
    check_python
    printf " done"
  }
  [ "${PYTHON}" ] && {
    log 'Installing Python dependencies ...'
    ${PYTHON} -m pip install --upgrade pip > /dev/null 2>&1
    ${PYTHON} -m pip install --upgrade setuptools > /dev/null 2>&1
    ${PYTHON} -m pip install wheel > /dev/null 2>&1
    ${PYTHON} -m pip install pynvim doq > /dev/null 2>&1
    printf " done"
  }
  have_npm=$(type -p npm)
  [ "${have_npm}" ] && {
    log "Installing Neovim npm package ..."
    npm i -g neovim > /dev/null 2>&1
    printf " done"

    log "Installing the icon font for Visual Studio Code ..."
    npm i -g @vscode/codicons > /dev/null 2>&1
    printf " done"
  }
  if ! command -v tree-sitter >/dev/null 2>&1; then
    log "Installing tree-sitter command line interface ..."
    if [ "${debug}" ]
    then
      START_SECONDS=$(date +%s)
      ${BREW_EXE} install tree-sitter
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
      ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
      printf "\nInstall tree-sitter elapsed time = %s${ELAPSED}\n"
    else
      ${BREW_EXE} install -q tree-sitter > /dev/null 2>&1
    fi
    printf " done"
  fi
  if command -v tree-sitter >/dev/null 2>&1; then
    tree-sitter init-config > /dev/null 2>&1
  fi
  if command -v cargo >/dev/null 2>&1; then
    cargo install rnix-lsp > /dev/null 2>&1
  fi
  GHUC="https://raw.githubusercontent.com"
  JETB_URL="${GHUC}/JetBrains/JetBrainsMono/master/install_manual.sh"
  [ "${quiet}" ] || printf "\n\tInstalling JetBrains Mono font ... "
  curl -fsSL "${JETB_URL}" > /tmp/jetb-$$.sh
  [ $? -eq 0 ] || {
    rm -f /tmp/jetb-$$.sh
    curl -kfsSL "${JETB_URL}" > /tmp/jetb-$$.sh
  }
  [ -f /tmp/jetb-$$.sh ] && {
    chmod 755 /tmp/jetb-$$.sh
    /bin/bash -c "/tmp/jetb-$$.sh" > /dev/null 2>&1
    rm -f /tmp/jetb-$$.sh
  }
  [ "${quiet}" ] || printf "done"
}

main () {
  check_prerequisites
  install_brew
  install_neovim_dependencies
  if command -v nvim >/dev/null 2>&1; then
    nvim_version=$(nvim --version | head -1 | grep -o '[0-9]\.[0-9]')
    if (( $(echo "$nvim_version < 0.9 " |bc -l) )); then
      install_neovim_head
		fi
	else
    install_neovim_head
	fi
  install_tools
  install_language_servers
}

quiet=
debug=

while getopts "dq" flag; do
  case $flag in
    d)
        debug=1
        ;;
    q)
        quiet=1
        ;;
    *)
        ;;
  esac
done

currlimit=$(ulimit -n)
hardlimit=$(ulimit -Hn)
if [ ${hardlimit} -gt 4096 ]
then
  ulimit -n 4096
else
  ulimit -n ${hardlimit}
fi

[ "${debug}" ] && MAIN_START_SECONDS=$(date +%s)

main

[ "${debug}" ] && {
  MAIN_FINISH_SECONDS=$(date +%s)
  MAIN_ELAPSECS=$(( MAIN_FINISH_SECONDS - MAIN_START_SECONDS ))
  MAIN_ELAPSED=`eval "echo $(date -ud "@$MAIN_ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
  printf "\nTotal elapsed time = %s${MAIN_ELAPSED}\n"
}

ulimit -n ${currlimit}
