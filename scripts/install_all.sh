#!/bin/bash
#
# Copyright (C) 2023 Ronald Record <ronaldrecord@gmail.com>
# Copyright (C) 2022 Michael Peter <michaeljohannpeter@gmail.com>
#
# Install Neovim and all dependencies for the Neovim config at:
#     https://github.com/doctorfree/Asciiville/conf/nvim/init.vim
#
# Adapted for Asciiville from https://github.com/Allaman/nvim.git
# See https://github.com/doctorfree/nvim
#
# shellcheck disable=SC2001,SC2016,SC2006,SC2086,SC2181,SC2129,SC2059

OS=""
PYTHON=
LINUX_DISTRIBUTION=""
# LINUX_HOMEBREW="https://docs.brew.sh/Homebrew-on-Linux"
DOC_HOMEBREW="https://docs.brew.sh"
BREW_EXE="brew"
NVIMCONF="${HOME}/.config/nvim/config.vim"
PLUGCONF="${HOME}/.config/nvim/plugins.vim"
NVIMGLOB="${HOME}/.config/nvim/lua/globals.lua"

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

  command -v sudo > /dev/null 2>&1 || { abort "sudo not found - please install"; }

  arch=$(uname -m)
  if [[ $arch =~ "arm" || $arch =~ "aarch64" ]]; then
    abort "Only amd64/x86_64 is supported"
  fi
}

get_os () {
  if [[ "$OSTYPE" =~ "darwin"* ]]; then
    OS="apple"
  elif [[ "$OSTYPE" =~ "linux" ]]; then
    OS="linux"
  fi
}

get_linux_distribution () {
  local release
  release=$(cat /etc/*-release)
  if [[ "$release" =~ "Debian" ]]; then
    LINUX_DISTRIBUTION="debian"
  elif [[ "$release" =~ "Ubuntu" ]]; then
    LINUX_DISTRIBUTION="ubuntu"
  elif [[ "$release" =~ "Arch" ]]; then
    LINUX_DISTRIBUTION="arch"
  elif [ -f /etc/os-release ]
  then
    . /etc/os-release
    [ "${ID}" == "debian" ] || [ "${ID_LIKE}" == "debian" ] && {
      LINUX_DISTRIBUTION="debian"
      debian=1
    }
    [ "${ID}" == "arch" ] || [ "${ID_LIKE}" == "arch" ] && {
      LINUX_DISTRIBUTION="arch"
      arch=1
    }
    [ "${ID}" == "fedora" ] && {
      LINUX_DISTRIBUTION="fedora"
      fedora=1
    }
    [ "${arch}" ] || [ "${debian}" ] || [ "${fedora}" ] || {
      echo "${ID_LIKE}" | grep debian > /dev/null && debian=1
    }
  else
    if [ -f /etc/arch-release ]
    then
      LINUX_DISTRIBUTION="arch"
    else
      have_apt=$(type -p apt)
      if [ "${have_apt}" ]
      then
        LINUX_DISTRIBUTION="debian"
      else
        if [ -f /etc/fedora-release ]
        then
          LINUX_DISTRIBUTION="fedora"
        else
          have_dnf=$(type -p dnf)
          if [ "${have_dnf}" ]
          then
            LINUX_DISTRIBUTION="fedora"
          else
            abort "Unknown operating system distribution"
          fi
        fi
      fi
    fi
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
    GOTEXT='# Go paths
[ -d ~/go ] && export GOPATH=$HOME/go
[ "$GOPATH" ] && [ -d "$GOPATH/bin" ] && PATH="$PATH:$GOPATH/bin"

if [ -d __YYY__/opt/go ]
then
  export GOROOT=__YYY__/opt/go
else
  [ -d /usr/local/go ] && export GOROOT=/usr/local/go
fi
[ -d ${GOROOT}/bin ] && {
  if [ `echo $PATH | grep -c ${GOROOT}/bin` -ne "1" ]; then
    PATH="$PATH:${GOROOT}/bin"
  fi
}
[ -d $HOME/go/bin ] && {
  if [ `echo $PATH | grep -c $HOME/go/bin` -ne "1" ]; then
    PATH="$PATH:$HOME/go/bin"
  fi
}
export PATH'

    if [ -f "${BASHINIT}" ]
    then
      grep "export GOROOT" "${BASHINIT}" > /dev/null || {
        echo "${GOTEXT}" | sed -e "s%__YYY__%${HOMEBREW_HOME}%" >> "${BASHINIT}"
      }
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
      echo "${GOTEXT}" | sed -e "s%__YYY__%${HOMEBREW_HOME}%" > "${BASHINIT}"
      echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" >> "${BASHINIT}"
      echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >> "${BASHINIT}"
      echo 'fi' >> "${BASHINIT}"
      echo 'if command -v zoxide > /dev/null; then' >> "${BASHINIT}"
      echo '  eval "$(zoxide init bash)"' >> "${BASHINIT}"
      echo 'fi' >> "${BASHINIT}"
    fi
    [ -f "${HOME}/.zshrc" ] && {
      grep "export GOROOT" "${HOME}/.zshrc" > /dev/null || {
        echo "${GOTEXT}" | sed -e "s%__YYY__%${HOMEBREW_HOME}%" >> "${HOME}/.zshrc"
      }
      grep "^eval \"\$(${BREW_EXE} shellenv)\"" "${HOME}/.zshrc" > /dev/null || {
        echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" >> "${HOME}/.zshrc"
        echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >> "${HOME}/.zshrc"
        echo 'fi' >> "${HOME}/.zshrc"
      }
      grep "^eval \"\$(zoxide init" "${HOME}/.zshrc" > /dev/null || {
        echo 'if command -v zoxide > /dev/null; then' >> "${HOME}/.zshrc"
        echo '  eval "$(zoxide init bash)"' >> "${HOME}/.zshrc"
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
  log "    Homebrew installed in ${HOMEBREW_HOME}"
  log "    See ${DOC_HOMEBREW}"
  log "Installing Homebrew gcc, cmake, and make ..."
  if [ "${debug}" ]
  then
	for tool in gcc cmake make
	do
      START_SECONDS=$(date +%s)
      ${BREW_EXE} install ${tool}
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
      ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
      printf "\nInstall ${tool} elapsed time = %s${ELAPSED}\n"
	done
    START_SECONDS=$(date +%s)
    ${BREW_EXE} uninstall --ignore-dependencies llvm
    ${BREW_EXE} install llvm@14
    ${BREW_EXE} link llvm@14
    FINISH_SECONDS=$(date +%s)
    ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
    ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
    printf "\nInstall llvm elapsed time = %s${ELAPSED}\n"
  else
    ${BREW_EXE} install --quiet gcc > /dev/null 2>&1
    ${BREW_EXE} install --quiet cmake > /dev/null 2>&1
    ${BREW_EXE} install --quiet make > /dev/null 2>&1
    ${BREW_EXE} uninstall --ignore-dependencies llvm > /dev/null 2>&1
    ${BREW_EXE} install --quiet llvm@14 > /dev/null 2>&1
    ${BREW_EXE} link llvm@14 > /dev/null 2>&1
  fi
  printf " done"
}

install_neovim_dependencies () {
  log "Installing dependencies ..."
  PKGS="git lazygit fd ripgrep fzf tmux go node python warrensbox/tap/tfswitch"
  for pkg in ${PKGS}
  do
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
    fi
#   [ $? -eq 0 ] || ${BREW_EXE} link --overwrite --quiet ${pkg} > /dev/null 2>&1
  done
  printf " done"
  link_python
  if ! command -v cargo >/dev/null 2>&1; then
    log "Installing cargo ..."
    [ "${debug}" ] && START_SECONDS=$(date +%s)
    RUST_URL="https://sh.rustup.rs"
    curl -fsSL "${RUST_URL}" > /tmp/rust-$$.sh
    [ $? -eq 0 ] || {
      rm -f /tmp/rust-$$.sh
      curl -kfsSL "${RUST_URL}" > /tmp/rust-$$.sh
      [ -f /tmp/rust-$$.sh ] && {
        cat /tmp/rust-$$.sh | sed -e "s/--show-error/--insecure --show-error/" > /tmp/ins$$
        cp /tmp/ins$$ /tmp/rust-$$.sh
        rm -f /tmp/ins$$
      }
    }
    [ -f /tmp/rust-$$.sh ] && sh /tmp/rust-$$.sh -y > /dev/null 2>&1
    rm -f /tmp/rust-$$.sh
    printf " done"
    [ "${debug}" ] && {
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
      ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
      printf "\nCargo install elapsed time = %s${ELAPSED}\n"
    }
  fi
}

install_neovim_head () {
  [ "${minimal}" ] || {
    if ! command -v nvim >/dev/null 2>&1; then
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
#     [ $? -eq 0 ] || ${BREW_EXE} link --overwrite --quiet neovim > /dev/null 2>&1
      printf " done"
    elif [[ ! $(nvim --version) =~ "dev" ]]; then
      log "Neovim is installed but not HEAD version"
    else
      log "Skipping Neovim installation"
    fi
    log "Installing vim-plug Neovim plugin manager ..."
    curl -fsLo \
         "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim \
         --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    [ $? -eq 0 ] || {
      curl -kfsLo \
           "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim \
           --create-dirs \
           https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    }
    printf " done"
  }
}

fixup_init_vim () {
  [ -f ${NVIMGLOB} ] && {
    python3_path=$(command -v python3)
    grep /usr/bin/python3 ${NVIMGLOB} > /dev/null && {
      cat ${NVIMGLOB} | sed -e "s%/usr/bin/python3%${python3_path}%" > /tmp/nvim$$
      cp /tmp/nvim$$ ${NVIMGLOB}
      rm -f /tmp/nvim$$
    }
    doq_path=$(command -v doq)
    grep /usr/bin/doq ${NVIMGLOB} > /dev/null && {
      cat ${NVIMGLOB} | sed -e "s%/usr/bin/doq%${doq_path}%" > /tmp/nvim$$
      cp /tmp/nvim$$ ${NVIMGLOB}
      rm -f /tmp/nvim$$
    }
  }
  [ "${OPENAI_API_KEY}" ] || {
    grep "^Plug 'jackMort/ChatGPT.nvim'" ${PLUGCONF} > /dev/null && {
      cat ${PLUGCONF} | sed -e "s%Plug 'jackMort/ChatGPT.nvim'%\" Plug 'jackMort/ChatGPT.nvim'%" > /tmp/nvim$$
      cp /tmp/nvim$$ ${PLUGCONF}
      rm -f /tmp/nvim$$
    }
    grep "\" lua require('chatgpt').setup()" ${NVIMCONF} > /dev/null && {
      cat ${NVIMCONF} | sed -e "s%\" lua require('chatgpt').setup()%lua require('chatgpt').setup()%" > /tmp/nvim$$
      cp /tmp/nvim$$ ${NVIMCONF}
      rm -f /tmp/nvim$$
    }
  }
  [ "${BREW_EXE}" ] || BREW_EXE=brew
  BREW_ROOT="$(${BREW_EXE} --prefix)"
  [ "${BREW_ROOT}" ] && {
    if [ -d ${BREW_ROOT}/opt/go/libexec ]
    then
      export GOROOT="${BREW_ROOT}/opt/go/libexec"
    else
      if [ -d ${BREW_ROOT}/opt/go ]
      then
        export GOROOT="${BREW_ROOT}/opt/go"
      else
        [ -d ${BREW_ROOT}/go ] && export GOROOT="${BREW_ROOT}/go"
      fi
    fi
  }
  [ "${GOPATH}" ] || export GOPATH="${HOME}/go"
  for gop in ${GOPATH} ${GOPATH}/src ${GOPATH}/pkg ${GOPATH}/bin
  do
    [ -d "${gop}" ] || mkdir -p "${gop}"
  done
  have_nvim=`type -p nvim`
  [ "${have_nvim}" ] && {
    grep "^Plug " ${PLUGCONF} > /dev/null && {
      nvim -i NONE -u ${PLUGCONF} -c 'set nomore' -c 'PlugInstall' -c 'qa'
      nvim -i NONE -c 'set nomore' -c 'UpdateRemotePlugins' -c 'qa'
      nvim -i NONE -c 'set nomore' -c 'GoInstallBinaries' -c 'qa'
#     nvim -i NONE -c 'GoUpdateBinaries' -c 'qa'
    }
  }
}

git_clone_neovim_config () {
  local neovim_config_path="$HOME/.config/nvim"
  if [[ ! -d "${neovim_config_path}" ]]; then
    log "Cloning Neovim config to ${neovim_config_path} ..."
    git clone https://github.com/doctorfree/nvim.git "${neovim_config_path}"
    fixup_init_vim
    printf " done"
  fi
}

check_python () {
  brew_path=$(command -v brew)
  brew_dir=$(dirname ${brew_path})
  if [ -x ${brew_dir}/python3 ]
  then
    PYTHON="${brew_dir}/python3"
  else
    PYTHON=
  fi
}

install_tools () {
  [ "${minimal}" ] || {
    [ "${debug}" ] && START_SECONDS=$(date +%s)
    log "Installing Neovim npm package ..."
    npm i -g neovim > /dev/null 2>&1
    printf " done"

    log "Installing the icon font for Visual Studio Code ..."
    npm i -g @vscode/codicons > /dev/null 2>&1
    printf " done"

    log "Installing language servers ..."
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
#     [ $? -eq 0 ] || ${BREW_EXE} link --overwrite --quiet \
#                                 ${server}-language-server > /dev/null 2>&1
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
      for pkg in golangci-lint jdtls marksman rust-analyzer shellcheck \
		        taplo texlab stylua eslint prettier terraform black shfmt \
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
      ${BREW_EXE} install -q jdtls > /dev/null 2>&1
      ${BREW_EXE} install -q marksman > /dev/null 2>&1
      ${BREW_EXE} install -q rust-analyzer > /dev/null 2>&1
      ${BREW_EXE} install -q shellcheck > /dev/null 2>&1
      ${BREW_EXE} install -q taplo > /dev/null 2>&1
      ${BREW_EXE} install -q texlab > /dev/null 2>&1
      ${BREW_EXE} install -q stylua > /dev/null 2>&1
      ${BREW_EXE} install -q eslint > /dev/null 2>&1
      ${BREW_EXE} install -q prettier > /dev/null 2>&1
      ${BREW_EXE} install -q terraform > /dev/null 2>&1
      ${BREW_EXE} install -q black > /dev/null 2>&1
      ${BREW_EXE} install -q shfmt > /dev/null 2>&1
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
    # For other language servers, see:
    # https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    if ! command -v zoxide >/dev/null 2>&1; then
      log "Installing zoxide smarter cd ..."
      if [ "${debug}" ]
      then
        START_SECONDS=$(date +%s)
        ${BREW_EXE} install zoxide
        FINISH_SECONDS=$(date +%s)
        ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
        ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
        printf "\nInstall zoxide elapsed time = %s${ELAPSED}\n"
      else
        ${BREW_EXE} install -q zoxide > /dev/null 2>&1
      fi
      printf " done"
    fi
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
  }
}

install_npm () {
  [ "${debug}" ] && START_SECONDS=$(date +%s)
  # Install nvm, node, npm, language servers
  NODE_VERSION="18.14.0"
  NVM_VERSION="0.39.3"
  NVM_INSTALL="https://raw.githubusercontent.com/nvm-sh/nvm/v$NVM_VERSION/install.sh"
  log "Installing nvm $NVM_VERSION ..."
  # Installs Node Version Manager to ~/.nvm
  # Also detects bash or zsh and appends source lines
  # to ~/.bashrc or ~/.zshrc accordingly
  curl --silent --location "${NVM_INSTALL}" > /tmp/nvm-$$.sh
  [ $? -eq 0 ] || {
    rm -f /tmp/nvm-$$.sh
    curl --insecure --silent --location "${NVM_INSTALL}" > /tmp/nvm-$$.sh
    cat /tmp/nvm-$$.sh | sed -e "s/--fail/--insecure --fail/" > /tmp/n$$
    cp /tmp/n$$ /tmp/nvm-$$.sh
    rm -f /tmp/n$$
  }
  if [ -s /tmp/nvm-$$.sh ]
  then
    chmod 755 /tmp/nvm-$$.sh
    /bin/bash -c "/tmp/nvm-$$.sh" > /dev/null 2>&1
    rm -f /tmp/nvm-$$.sh
    printf " done"
  else
    printf "\nERROR: Download of NVM installation script failed"
    printf "\nSee https://github.com/nvm-sh/nvm#installing-and-updating"
    printf "\nto manually install the node version manager\n"
  fi
  export NVM_DIR="$HOME/.nvm"
  # To get the nvm command working without sourcing bash configs
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  # Installs specific version of Node
  have_nvm=`type -p nvm`
  [ "${have_nvm}" ] && {
    log "Installing node $NODE_VERSION ..."
    nvm install $NODE_VERSION
    printf " done"
  }
  # Python virtual env in Asciiville breaks backwards compatibility
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

  log "Setting npm config to use ~/.local as prefix ..."
  # npm install -g will now install to ~/.local/bin
  npm config set prefix "${HOME}/.local/"
  printf " done"
  [ "${debug}" ] && {
    FINISH_SECONDS=$(date +%s)
    ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
    ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
    printf "\nNpm install elapsed time = %s${ELAPSED}\n"
  }
}

main () {
  check_prerequisites
  local common_packages="git curl gip tar unzip"
  get_os
  if [[ $OS == "linux" ]]; then
    get_linux_distribution
    if [[ $LINUX_DISTRIBUTION == "debian" || $LINUX_DISTRIBUTION == "ubuntu" ]]; then
      log "Updating package database ..."
      sudo apt -q -y update > /dev/null 2>&1
      printf " done"
      log "Installing common packages ..."
      sudo apt -q -y install build-essential ${common_packages} > /dev/null 2>&1
      printf " done"
      install_brew
      install_neovim_dependencies
      install_neovim_head
      git_clone_neovim_config
    elif [[ $LINUX_DISTRIBUTION == "arch" ]]; then
      log "Updating package database ..."
      sudo pacman -Sy --noconfirm > /dev/null 2>&1
      printf " done"
      log "Installing common packages ..."
      sudo pacman -S --noconfirm base-devel ${common_packages} > /dev/null 2>&1
      printf " done"
      install_brew
      install_neovim_dependencies
      install_neovim_head
      git_clone_neovim_config
    elif [[ $LINUX_DISTRIBUTION == "fedora" ]]; then
      log "Updating package database ..."
      sudo dnf --assumeyes --quiet update > /dev/null 2>&1
      printf " done"
      log "Installing common packages ..."
      sudo dnf --assumeyes --quiet groupinstall "Development Tools" > /dev/null 2>&1
      sudo dnf --assumeyes --quiet install ${common_packages} > /dev/null 2>&1
      printf " done"
      install_brew
      install_neovim_dependencies
      install_neovim_head
      git_clone_neovim_config
    fi
  elif [[ $OS == "apple" ]];then
    have_xcode=`type -p xcode-select`
    [ "${have_xcode}" ] || abort "Xcode must be installed. See the App store."
    xcode-select -p > /dev/null 2>&1
    [ $? -eq 0 ] || xcode-select --install
    install_brew
    log "Installing common packages ..."
    for pkg in ${common_packages}
    do
      ${BREW_EXE} install --quiet ${pkg} > /dev/null 2>&1
      [ $? -eq 0 ] || ${BREW_EXE} link --overwrite --quiet ${pkg} > /dev/null 2>&1
    done
    printf " done"
    install_neovim_dependencies
    install_neovim_head
    git_clone_neovim_config
  fi
  install_npm
  install_tools
}

quiet=
minimal=
debug=

while getopts "dmq" flag; do
  case $flag in
    d)
        debug=1
        ;;
    m)
        minimal=1
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
