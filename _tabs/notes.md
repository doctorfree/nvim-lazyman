---
# the default layout is 'page'
icon: fas fa-gg-circle
order: 6
---

## Lazyman Neovim Configuration Manager Notes

### Lazy

The `nvim-Lazyman` Neovim configuration uses the
[Lazy plugin manager](https://github.com/folke/lazy.nvim).
The [Lazyman Wiki](https://github.com/doctorfree/nvim-lazyman/wiki) includes
a list of the
[Lazy loaded plugins](https://github.com/doctorfree/nvim-lazyman/wiki/Lazy-Profile)
in the `nvim-Lazyman` Neovim configuration sorted by
[load order](https://github.com/doctorfree/nvim-lazyman/wiki/Lazy-Profile#sorted-by-load-order)
and
[load time](https://github.com/doctorfree/nvim-lazyman/wiki/Lazy-Profile#sorted-by-loading-time).

### Mason

The `nvim-Lazyman` Neovim configuration uses the
[Mason portable package manager](https://github.com/williamboman/mason.nvim)
to easily install and manage LSP servers, DAP servers, linters, and formatters.

The first time `nvim` is executed Mason will install several packages required
by the new Neovim configuration. Please be patient. If you exit Neovim prior
to completion of the Mason installs, it will resume the next session.

The [Lazyman Wiki](https://github.com/doctorfree/nvim-lazyman/wiki) includes
a list of the
[Mason installed packages](https://github.com/doctorfree/nvim-lazyman/wiki/Mason-Installed)
in the `nvim-Lazyman` Neovim configuration.

### Packer

The `lazyman` command can be used to install and initialize Neovim configurations
using the `Packer` plugin manager. To install and initialize a `Packer` managed
Neovim configuration, specify the `-P` flag on the `lazyman` command line.

For example, to install and initialize the `Abstract` Neovim configuration
at <https://github.com/Abstract-IDE/Abstract> invoke `lazyman` as follows:

```bash
lazyman -C https://github.com/Abstract-IDE/Abstract -N nvim-Abstract -P
```

This will clone the indicated repository into `$HOME/.config/nvim-Abstract`
and initialize it using Packer with:

```bash
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```

After `export NVIM_APPNAME="nvim-Abstract"`, invoking `nvim` will bring up
the Abstract Neovim configuration. Note, `Abstract` is now a supported
Lazyman Neovim configuration and can be installed with `lazyman -g`.

Another Packer based Neovim configuration, this one using Fennel, is included
as a Lazyman supported "Personal" config:

```bash
lazyman -w Fennel
```

To begin exploring this Neovim configuration:

```bash
NVIM_APPNAME="nvim-Fennel" nvim ~/.config/nvim-Fennel/fnl/conf/init.fnl
```

Another example of a Packer based Neovim configuration is the excellent
`MagicVim` config, a fully supported Lazyman Neovim config. To install and
initialize `MagicVim`:

```bash
lazyman -m
```

To begin exploring the `MagicVim` configuration:

```bash
NVIM_APPNAME="nvim-MagicVim" nvim
```

### Plug

The `lazyman` command can be used to install and initialize Neovim configurations
using the `Plug` plugin manager. To install and initialize a `Plug` managed
Neovim configuration, specify the `-p` flag on the `lazyman` command line.

For example, to install and initialize the `Optixal` Neovim configuration
at <https://github.com/Optixal/neovim-init.vim> invoke `lazyman` as follows:

```bash
lazyman -C https://github.com/Optixal/neovim-init.vim -N nvim-Optixal -p
```

After `export NVIM_APPNAME="nvim-Optixal"`, invoking `nvim` will bring up
the Optixal Neovim configuration. Note, the `Optixal` configuration is one
of the supported Lazyman configs and can be installed with `lazyman -w Optixal`.

Another Plug based Neovim configuration serves as a second example:

```bash
lazyman -C https://github.com/offa/nvim-config -N nvim-Offa -p
```

To begin exploring this Neovim configuration:

```bash
NVIM_APPNAME="nvim-Offa" nvim ~/.config/nvim-Offa/init.lua
```

Also included as a supported Lazyman config is the previous Neovim
configuration of the author which uses `vim-plug` and a vimscript
initialization file. Install the Lazyman `Plug` config with the command
`lazyman -w Plug` and start exploring with:

```bash
NVIM_APPNAME="nvim-Plug" nvim ~/.config/nvim-Plug/init.vim
```

#### Plug with Vim runtimepath manager

Finally, consider this Neovim configuration written in vimscript, stored
in a subdirectory of a non-default git branch, using the `vim-plug` plugin
manager, and relying on `pathogen.vim` to manage the runtimepath. Installing
this Neovim configuration with `lazyman` requires several command line options:

```bash
lazyman -b vps -C https://github.com/xero/dotfiles \
        -D vim/.config/nvim -N nvim-Xero -p
```

This installs and initializes the configuration in `~/.config/nvim-Xero/` but
fails to install `pathogen`. The `pathogen.vim` runtimepath manager can be
installed with:

```bash
cfgdir="${HOME}/.config/nvim-Xero"
mkdir -p ${cfgdir}/autoload ${cfgdir}/bundle
curl -LSso ${cfgdir}/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

Open the configuration with `NVIM_APPNAME="nvim-Xero" nvim` and issue the
command `:PlugInstall`. Now the configuration is properly initialized.

### Health check

After installing and initializing the Neovim configuration, perform a health
check while in Neovim with `:checkhealth`. Examine any warnings or errors and
perform any necessary remedial actions such as installing missing packages
or resolving keymap conflicts.

### Profiling and benchmarking

A Makefile for profiling and benchmarking Neovim configurations is included
in the `Lazyman` Neovim configuration at `~/.config/nvim-Lazyman/Makefile`.

To create startup and loading profiles for a Neovim configuration:

```bash
cd ~/.config/nvim-<Name> # e.g. 'cd ~/.config/nvim-AstroNvim'
export NVIM_APPNAME="nvim-<Name>" # e.g. 'export NVIM_APPNAME="nvim-AstroNvim"
make -f ~/.config/nvim-Lazyman/Makefile profile
```

The files `profile-startup.log` and `profile-viml.log` will be generated.

Benchmarking a Neovim configuration startup requires `hyperfine`. If not present,
install `hyperfine` with `cargo`:

```bash
cargo install --locked hyperfine
```

To benchmark a Neovim configuration:

```bash
cd ~/.config/nvim-<Name> # e.g. 'cd ~/.config/nvim-LazyVim'
export NVIM_APPNAME="nvim-<Name>" # e.g. 'export NVIM_APPNAME="nvim-LazyVim"
make -f ~/.config/nvim-Lazyman/Makefile benchmark
```

The files `profile-bench-baseline.md`, `profile-bench-startup.md`,
`profile-bench-baseline.log` and `profile-bench-startup.log` will be generated.

### Symbolic links

The `NVIM_APPNAME` procedure described above allows you to keep any existing
`~/.config/nvim` and install multiple Neovim configurations, each in its own
separate `~/.config/$NVIM_APPNAME` folder. Note, however, that if you create
a symbolic link from `~/.config/$NVIM_APPNAME` to `~/.config/nvim` with the
intention of using the `nvim-Lazyman` configuration without need of `NVIM_APPNAME`
then you will also need to symlink `~/.local/share/$NVIM_APPNAME` and
`~/.local/state/$NVIM_APPNAME`.

### Shell initialization setup

If `nvim-Lazyman` is installed and initialized using the `NVIM_APPNAME`
environment variable as described above then `NVIM_APPNAME` needs to be
set when a `lazyman` initialized configuration is used. This can be done by
setting and exporting this variable in your shell's initialization file
(e.g. `.bashrc` for Bash users, `.zshrc` for Zsh users). Add the line
`export NVIM_APPNAME="nvim-Lazyman"` to your shell initialization and re-login
or source the initialization file to use the `nvim-Lazyman` configuration.

However, setting `NVIM_APPNAME` in the shell initialization file fixes that
environment variable to a single Neovim configuration and must be reset
to use another configuration. A more flexible approach is to use shell
aliases as described in the next section. Both approaches can be used,
an export in the shell initialization file for the most frequently used
Neovim configuration and aliases to override that for other configurations.

### The nvims fuzzy selector

The `lazyman` installation and configuration automatically configures
convenience aliases and shell functions for Lazyman installed Neovim
configurations. One of these is the `nvims` shell function which dynamically
creates a fuzzy searchable menu of installed Neovim configurations and launches
Neovim with the selected Lazyman Neovim configuration.

See `~/.config/nvim-Lazyman/.lazymanrc`.

Similarly, a `neovides` shell function can be used to select a Neovim
configuration for use with the Neovim GUI `neovide`.

Both the `nvims` shell function and `neovides` shell function accept a
`-R` flag which indicates removal of the selected Neovim configuration.
Also supported is the `-C filter` option to `nvims` and `neovides` which
specifies a filter string to match when generating the list of Neovim
configurations to search and select.

The fuzzy searchable/selectable menu of Neovim configurations can also
be shown with the command `lazyman -S`. Note also that both the `nvims`
shell function and the `lazyman -S` command can accept additional filename
arguments which are then passed to Neovim. For example, to edit
`/tmp/foo.lua` with a Neovim configuration selected from the `nvims` menu:

```bash
nvims /tmp/foo.lua
```

Execute `nvims` directly at the shell prompt or by using the convenience
key binding `ctrl-n`.

Similarly, if `neovide` is found in the execution PATH then a fuzzy
selectable menu is provided with the `neovides` shell function and
convenience key binding of `ctrl-N` to bring up that menu.

The following command line options are available with `nvims` and `neovides`:

`-c command` : specifies an `Ex` command to be executed after the first file has been read

`-C filter` : specifies a filter to use when generating the list of configurations to select from

`-I` : indicates display of the selected Neovim configuration information document

`-R` : indicates removal of the selected Neovim configurations

`-S file` : Executes `Vimscript` or `Lua` in `file` after the first file has been read. If no `-S` argument is provided then `~/.config/nvim-Lazyman/overrides.lua` is used if not empty.

`-U` : displays a usage message and exits

Without arguments `nvims` and `neovides` generate a fuzzy search and selectable
menu of all Lazyman installed Neovim configurations. Neovim or neovide will be
opened using the selected configuration.

#### Example nvims and neovides usage

`nvims` : presents a fuzzy searchable and selectable menu of Neovim configurations and opens Neovim using the selected configuration

`neovides` : presents a fuzzy searchable and selectable menu of Neovim configurations and opens Neovide using the selected configuration

`nvims -R` : presents a fuzzy searchable and selectable menu of Neovim configurations and removes the selected Neovim configuration

`nvims -C astro foo.lua` : presents a fuzzy searchable and selectable menu of Neovim configurations with names containing the case insensitive string 'astro' and opens the file `foo.lua` with Neovim using the selected configuration

##### Lazyman `.lazymanrc` shell aliases and functions

```bash
# $HOME/.config/nvim-Lazyman/.lazymanrc
# This file should be sourced from the shell initialization file
# e.g. $HOME/.bashrc or $HOME/.zshrc
#
# Command to open a URL
# Set this to override the defaults:
#   On macOS the default is the 'open' command
#   Linux default is 'python3 -m webbrowser' then 'xdg-open' then 'gio open'
# export URL_OPEN_COMMAND="your custom command"
# For example, to use 'gio' rather than Python's webbrowser module on Linux:
# export URL_OPEN_COMMAND="gio open"
#
# To specify the browser, set the BROWSER environment variable. For example:
# export BROWSER="w3m"
#
# Bob neovim version manager path
[ -d ${HOME}/.local/share/bob/nvim-bin ] && {
  export PATH="${HOME}/.local/share/bob/nvim-bin${PATH:+:${PATH}}"
}
# Aliases for lsd, tldr, and bat if they exist
command -v lsd > /dev/null && alias ls='lsd --group-dirs first' && \
 alias tree='lsd --tree' && alias lss='lsd --group-dirs first'
command -v tldr > /dev/null && {
  command -v fzf > /dev/null && {
    alias tldrf='tldr --list | fzf --preview "tldr {1} --color=always" --preview-window=right:70% | xargs tldr --color=always'
  }
}
command -v bat > /dev/null && alias less='bat'
command -v batcat > /dev/null && \
 alias bat='batcat' && \
 alias less='batcat'
# To use Vim
command -v vim > /dev/null && alias vi='vim'
# To use Neovim
command -v nvim > /dev/null && {
  # For compatibility with earlier versions of .lazymanrc
  if alias nvim >/dev/null 2>&1; then
    unalias nvim
  fi
  if alias nvims >/dev/null 2>&1; then
    unalias nvims
  fi
  if alias neovides >/dev/null 2>&1; then
    unalias neovides
  fi
  alias vi='nvim'
  # Uncomment this line to use Neovim even when you type vim
  # Leave commented to use vim as a backup editor if nvim not found
  # alias vim='nvim'
  function set_items() {
    while IFS= read -r ndir
    do
      [ -d ${HOME}/.config/${ndir} ] && {
        alias ${ndir}="NVIM_APPNAME=${ndir} nvim"
        entry=$(echo ${ndir} | sed -e "s/nvim-//")
        items+=("${entry}")
        ndirs+=("${ndir}")
      }
    done < "${HOME}/.config/nvim-Lazyman/.nvimdirs"
  }
  items=()
  ndirs=()
  [ -d ${HOME}/.config/nvim ] && {
    alias nvim-default="NVIM_APPNAME=nvim nvim"
  }
  # Add all previously installed Neovim configurations
  [ -f ${HOME}/.config/nvim-Lazyman/.nvimdirs ] && set_items

  function runconfig() {
    cfg="$1"
    shift
    comm="nvim"
    dash=
    [ "${USE_NEOVIDE}" ] && {
      comm="neovide"
      dash='--'
    }
    [ -d "${HOME}/.config/${cfg}" ] || {
      [ -d "${HOME}/.config/nvim-${cfg}" ] && cfg="nvim-${cfg}"
    }

    # Use a file tree explorer for configurations without a dashboard
    case ${cfg} in
      nvim-BasicLsp|nvim-BasicMason|nvim-Enrique|nvim-Extralight|nvim-LspCmp|nvim-Minimal|nvim-Simple)
        explore="Lexplore"
        ;;
      nvim-Kabin|nvim-Lamia|nvim-Kickstart|nvim-Maddison|nvim-Rafi|nvim-SingleFile|nvim-Slydragonn)
        explore="Neotree"
        ;;
      nvim-Cosmic|nvim-Fennel|nvim-Opinion|nvim-Optixal|nvim-Xiao)
        explore="NvimTreeOpen"
        ;;
      nvim-Basic|nvim-Cpp|nvim-Go|nvim-Metis|nvim-Modular|nvim-Python|nvim-Rust|nvim-Scratch|nvim-StartLsp|nvim-StartMason)
        explore="NvimTreeToggle"
        ;;
      nvim-3rd)
        explore='lua local api = require("nvim-tree.api") local tree = require("nvim-tree") api.tree.toggle(true)'
        ;;
      *)
        explore=
        ;;
    esac
    if (( ${#@} )); then
      NVIM_APPNAME="${cfg}" ${comm} ${dash} ${srcopt} ${nvimsrc} ${cmdopt} ${nvimcmd} $@
    else
      if [[ "${explore}" ]]; then
        NVIM_APPNAME="${cfg}" ${comm} ${dash} -c "${explore}"
      else
        NVIM_APPNAME="${cfg}" ${comm}
      fi
    fi
  }

  function nvims_usage() {
    printf "\n\nUsage: $1 [-c command] [-C filter] [-I] [-R] [-S file] [-U] [file1 [file2] ...]"
    printf "\nWhere:"
    printf "\n\t'-c command' : specifies an 'Ex' command to be executed after the first file has been read"
    printf "\n\t'-C filter' : specifies a filter to use when generating the list to select from"
    printf "\n\t'-I' : indicates display of the selected Neovim configuration information document"
    printf "\n\t'-R' : indicates removal of the selected Neovim configurations"
    printf "\n\t'-S file' : Executes 'Vimscript' or 'Lua' in 'file' after the first file has been read. If no '-S' argument is provided then '~/.config/nvim-Lazyman/overrides.lua' is used if not empty"
    printf "\n\t'-U' : displays a usage message and exits"
    printf "\n\nWithout arguments 'nvims' and 'neovides' generate a fuzzy search and selectable"
    printf "\nmenu of all Lazyman installed Neovim configurations. Neovim or neovide will be"
    printf "\nopened using the selected configuration.\n\n"
    return
  }

  function nvims() {
    action="Open"
    info=
    filter=
    remove=
    cmdopt=
    nvimcmd=
    srcopt=
    nvimsrc=
    overfile="${HOME}/.config/nvim-Lazyman/overrides.lua"
    oversize=$(grep -v '^--' "${overfile}")
    [[ -z "${oversize}" ]] || {
      srcopt="-S"
      nvimsrc="${overfile}"
    }
    local OPTIND o a
    while getopts ":c:C:IRS:U" o; do
      case "${o}" in
        c)
          cmdopt="-c"
          nvimcmd="${OPTARG}"
          ;;
        C)
          filter="${OPTARG}"
          ;;
        I)
          info=1
          action="View Info for"
          ;;
        R)
          remove=1
          action="Remove"
          ;;
        S)
          [ -s "${OPTARG}" ] && {
            srcopt="-S"
            nvimsrc="${OPTARG}"
          }
          ;;
        U)
          nvims_usage nvims
          return
          ;;
        \?)
          printf "\nInvalid nvims option"
          nvims_usage nvims
          return
          ;;
      esac
    done
    shift $((OPTIND-1))
    if [ -f ${HOME}/.config/nvim-Lazyman/.nvimdirs ]; then
      items=()
      ndirs=()
      set_items
    fi
    numitems=${#items[@]}
    if [ ${numitems} -eq 1 ]; then
      config="${items[@]:0:1}"
    else
      height=$((numitems * 6))
      [ ${height} -gt 100 ] && height=100
      [ ${height} -lt 20 ] && height=20
      if [ "${filter}" ]; then
        config=$(printf "%s\n" "${items[@]}" | grep -i ${filter} | fzf --prompt=" ${action} Neovim Config  " --height=${height}% --layout=reverse --border --exit-0)
      else
        config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" ${action} Neovim Config  " --height=${height}% --layout=reverse --border --exit-0)
      fi
    fi
    if [[ -z ${config} ]]; then
      echo "Nothing selected"
      return 0
    else
      if [ -d ${HOME}/.config/nvim-${config} ]; then
        config="nvim-${config}"
        [[ -z ${remove} ]] && [[ -z ${info} ]] && {
          alias vi="NVIM_APPNAME=${NVIM_APPNAME:-${config}} nvim"
        }
      else
        [ -d ${HOME}/.config/${config} ] || {
          echo "Cannot locate ${config} Neovim configuration directory"
          return 0
        }
      fi
    fi
    if [[ -z ${remove} ]]; then
      if [[ -z ${info} ]]; then
        export USE_NEOVIDE=
        runconfig "${config}" $@
      else
        lazyman -N "${config}" info
      fi
    else
      [[ "${config}" == "nvim-Lazyman" ]] || lazyman -R -N ${config}
    fi
  }

  function neovides() {
    action="Open"
    info=
    filter=
    remove=
    cmdopt=
    nvimcmd=
    srcopt=
    nvimsrc=
    overfile="${HOME}/.config/nvim-Lazyman/overrides.lua"
    oversize=$(grep -v '^--' "${overfile}")
    [[ -z "${oversize}" ]] || {
      srcopt="-S"
      nvimsrc="${overfile}"
    }
    local OPTIND o a
    while getopts ":c:C:IRS:U" o; do
      case "${o}" in
        c)
          cmdopt="-c"
          nvimcmd="${OPTARG}"
          ;;
        C)
          filter="${OPTARG}"
          ;;
        I)
          info=1
          action="View Info for"
          ;;
        R)
          remove=1
          action="Remove"
          ;;
        S)
          [ -s "${OPTARG}" ] && {
            srcopt="-S"
            nvimsrc="${OPTARG}"
          }
          ;;
        U)
          nvims_usage neovides
          return
          ;;
        \?)
          printf "\nInvalid neovides option"
          nvims_usage neovides
          return
          ;;
      esac
    done
    shift $((OPTIND-1))
    if [ -f ${HOME}/.config/nvim-Lazyman/.nvimdirs ]; then
      items=()
      ndirs=()
      set_items
    fi
    numitems=${#items[@]}
    if [ ${numitems} -eq 1 ]; then
      config="${items[@]:0:1}"
    else
      height=$((numitems * 6))
      [ ${height} -gt 100 ] && height=100
      [ ${height} -lt 20 ] && height=20
      if [ "${filter}" ]; then
        config=$(printf "%s\n" "${items[@]}" | grep -i ${filter} | fzf --prompt=" ${action} Neovim Config  " --height=${height}% --layout=reverse --border --exit-0)
      else
        config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" ${action} Neovim Config  " --height=${height}% --layout=reverse --border --exit-0)
      fi
    fi
    if [[ -z ${config} ]]; then
      echo "Nothing selected"
      return 0
    else
      if [ -d ${HOME}/.config/nvim-${config} ]; then
        config="nvim-${config}"
        [[ -z ${remove} ]] && [[ -z ${info} ]] && {
          alias neovide="NVIM_APPNAME=${NVIM_APPNAME:-${config}} neovide"
        }
      else
        [ -d ${HOME}/.config/${config} ] || {
          echo "Cannot locate ${config} Neovim configuration directory"
          return 0
        }
      fi
    fi
    if [[ -z ${remove} ]]; then
      if [[ -z ${info} ]]; then
        export USE_NEOVIDE=1
        runconfig "${config}" $@
      else
        lazyman -N "${config}" info
      fi
    else
      [[ "${config}" == "nvim-Lazyman" ]] || lazyman -R -N ${config}
    fi
  }
}

# Add ~/.local/bin to PATH if it exists
[ -d $HOME/.local/bin ] && {
  [[ ":$PATH:" == *":$HOME/.local/bin:"* ]] || {
    export PATH="$PATH:$HOME/.local/bin"
  }
}
# Add ~/.cargo/bin to PATH if it exists
[ -d $HOME/.cargo/bin ] && {
  [[ ":$PATH:" == *":$HOME/.cargo/bin:"* ]] || {
    export PATH="$PATH:$HOME/.cargo/bin"
  }
}
# Add ~/.luarocks/bin to PATH if it exists
[ -d $HOME/.luarocks/bin ] && {
  [[ ":$PATH:" == *":$HOME/.luarocks/bin:"* ]] || {
    export PATH="$PATH:$HOME/.luarocks/bin"
  }
}
```

The `nvims` shell function, when executed, presents a fuzzy searchable menu
of the `lazyman` installed Neovim configurations. The `lazyman` installed
Neovim configurations are maintained in the file
`~/.config/nvim-Lazyman/.nvimdirs`. Entries in this file are what `nvims`
uses for its fuzzy selection menu. When Neovim configurations are installed
or removed with `lazyman` this file is updated accordingly.

Note also that a convenience key binding has been created to launch
`nvims` with `ctrl-n`.

Similarly, if `neovide` is found in the execution PATH then a fuzzy
selectable menu is provided with the `neovides` shell function and
convenience key binding of `ctrl-N` to bring up that menu.

##### Lazyman `.nvimsbind` shell key binding file

```bash
# $HOME/.config/nvim-Lazyman/.nvimsbind
# This file should be sourced from the shell initialization file
# after first sourcing ~/.config/nvim-Lazyman/.lazymanrc
command -v nvims > /dev/null && {
  if [ -n "$($SHELL -c 'echo $ZSH_VERSION')" ]; then
   bindkey -s ^n "nvims\n"
  elif [ -n "$($SHELL -c 'echo $BASH_VERSION')" ]; then
   bind -x '"\C-n": nvims'
  else
   bindkey -s ^n "nvims\n"
  fi
}
command -v neovide > /dev/null && {
  if [ -n "$($SHELL -c 'echo $ZSH_VERSION')" ]; then
   bindkey -s ^N "neovides\n"
  elif [ -n "$($SHELL -c 'echo $BASH_VERSION')" ]; then
   bind -x '"\C-N": neovides'
  else
   bindkey -s ^N "neovides\n"
  fi
}
```

The `nvims` Neovim configuration switching shell function was created by
[Elijah Manor](https://github.com/elijahmanor). He created an excellent
[Neovim Config Switcher](https://youtu.be/LkHjJlSgKZY) video in which
he provides details on use and customization of the `nvims` shell function.

Lazyman has incorporated and adapted the `nvims` shell function for use
with the Lazyman installed Neovim configurations. The `nvims` shell
function is automatically configured during `lazyman` installation.

The `.lazymanrc` file also creates aliases for `ls`, `less`, and others
including a `tldrf` alias that allows fuzzy searching and selecting from
the list of cheatsheets supported by `tldr`. Try out the `tldrf` command
to quickly and easily display documentation for thousands of commands.
The idea for the `tldrf` alias came from another
[video by Elijah Manor](https://youtu.be/4EE7qlTaO7c).

### Using aliases

In addition to exporting `NVIM_APPNAME` in your shell initialization file, you
may wish to create aliases to execute with the various Neovim configurations
you have installed. For example, aliases could be created to use Neovim
configurations installed in `~/.config/nvim-LazyVim` and `~/.config/nvim-LunarVim`
as follows:

```bash
alias nvim-lazy="NVIM_APPNAME=nvim-LazyVim nvim"
alias nvim-lunar="NVIM_APPNAME=nvim-LunarVim nvim"
```

After sourcing these aliases in your shell, to invoke Neovim with the LazyVim
configuration run `nvim-lazy filename.py` and to invoke Neovim with the LunarVim
config run `nvim-lunar proposal.md`.

### Open URL command

The `lazyman` command includes support for opening Neovim configuration info
documents in a browser. The command used to open a file URL varies from system
to system and can be problematic. On `macOS` the `open` command is used and
works fairly flawlessly. However, on `Linux` there are a variety of ways, none
of which work well on all platforms. The `lazyman` command does its best to
figure out what command to use to open a file URL but this may not always
result in success. If opening a configuration information document fails,
the open URL command can be overriden in `~/.config/nvim-Lazyman/.lazymanrc`.
To override the open URL command and/or set the `BROWSER` environment variable,
uncomment and edit the following section of code there:

```bash
# Command to open a URL
# Set this to override the defaults:
#   On macOS the default is the 'open' command
#   Linux default is 'python3 -m webbrowser' then 'xdg-open' then 'gio open'
# export URL_OPEN_COMMAND="your custom command"
# For example, to use 'gio' rather than Python's webbrowser module on Linux:
# export URL_OPEN_COMMAND="gio open"
#
# To specify the browser, set the BROWSER environment variable. For example:
# export BROWSER="w3m"
```

### Using lazyman to explore configurations

Another alternative to setting **NVIM_APPNAME** in the environment or with an
alias is to use the `lazyman` command to specify which Neovim configuration
to use with this invocation. This is done using the `-E config` option to
`lazyman`. When invoking `lazyman` with the `-E config` argument, the Neovim
configuration can be specified by setting `config` to one of `astronvim`,
`ecovim`, `kickstart`, `lazyman`, `lazyvim`, `lunarvim`, `nvchad`, or any
Neovim configuration directory in `~/.config`. For example, to edit the file
`foo.lua` using the LazyVim Neovim configuration:

```bash
lazyman -E lazyvim foo.lua
```

Now you're using the LazyVim Neovim configuration to edit `foo.lua`, all of the
LazyVim key bindings, plugins, options, and configuration will be used.

To instead use the LunarVim Neovim configuration to edit `foo.lua`:

```bash
lazyman -E lunarvim foo.lua
```

Before using `lazyman -E <config> …` to explore a Neovim configuration,
first install and initialize the `<config>` configuration with `lazyman`.

When invoked with the `-E config` option, `lazyman` sets the **NVIM_APPNAME**
environment variable to the specified `config` and executes `nvim` with
all following arguments. This is a pretty easy way to explore all the
`lazyman` installed and initialized Neovim configurations.
