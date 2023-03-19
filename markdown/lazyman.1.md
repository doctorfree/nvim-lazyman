---
title: LAZYMAN
section: 1
header: User Manual
footer: lazyman 1.0.1
date: March 13, 2023
---

## NAME

lazyman - install, initialize, and manage multiple Neovim configurations

## SYNOPSIS

lazyman [-A] [-a] [-b branch] [-c] [-d] [-k] [-l] [-m] [-v] [-n] [-P] [-q] [-I] [-L cmd] [-rR] [-C url] [-N nvimdir] [-U] [-y] [-u]

## DESCRIPTION

The _lazyman_ command can be used to install, initialize, and manage
multiple Neovim configurations. Neovim configurations are installed
and initialized in separate subdirectories of **_~/.config/_** with
associated separate subdirectories in **_~/.local/share/_**,
**_~/.local/state/_**, and **_~/.cache/_**.

The _lazyman_ Neovim configuration is installed as **_~/.config/nvim-lazyman_**
and the _lazyman_ command is installed as **_~/.local/bin/lazyman_**.

The Neovim configuration used by the _nvim_ command is determined by
the **NVIM_APPNAME** environment variable (Neovim 0.9 and later only).
Set the **NVIM_APPNAME** environment variable in the shell initialization
file (typically **_~/.bashrc_** or **_~/.zshrc_**) by using the _export_
shell builtin:

```bash
export NVIM_APPNAME="<nvimdir>"
```

where **_\<nvimdir\>_** is the subdirectory in **_~/.config/_** that holds the
desired Neovim configuration. For example, to use the _LazyVim_ Neovim
configuration in **_~/.config/nvim-LazyVim/_** the export command would be:

```bash
export NVIM_APPNAME="nvim-LazyVim"
```

Aliases can also be used to switch quickly and easily between Neovim configurations.
For example, aliases could be created to use Neovim configurations installed in
**_~/.config/nvim-python_** and **_~/.config/nvim-work_** as follows:

```bash
alias vip='function _vip(){ export NVIM_APPNAME="nvim-python"; nvim $* };_vip'
alias viw='function _viw(){ export NVIM_APPNAME="nvim-work"; nvim $* };_viw'
```

After sourcing these aliases in your shell, to invoke Neovim with the Python
configuration run **_vip filename.py_** and to invoke Neovim with your Work config
run **_viw proposal.md_**.

## OPTIONS

**-A**
: indicates install all supported Neovim configurations

**-a**
: indicates install and initialize the the AstroNvim Neovim configuration

**-b branch**
: specifies an nvim-lazyman git branch to checkout

**-c**
: indicates install and initialize the NvChad Neovim configuration

**-d**
: indicates debug mode

**-k**
: indicates install and initialize the Kickstart Neovim configuration

**-l**
: indicates install and initialize the LazyVim Neovim configuration

**-m**
: indicates install and initialize the Allaman Neovim configuration

**-v**
: indicates install and initialize the LunarVim Neovim configuration

**-I**
: indicates install language servers and tools for coding diagnostics

**-L cmd**
: specifies a Lazy command to run

**-n**
: indicates dry run, don't actually do anything, just printf's

**-p**
: indicates use Packer rather than Lazy to initialize

**-q**
: indicates quiet install

**-r**
: indicates remove the previously installed configuration

**-R**
: indicates remove previously installed configuration and backups

**-C url**
: specifies a URL to a Neovim configuration git repository

**-N**
: 'nvimdir' specifies the folder name to use for the config given by -C

**-U**
: indicates update an existing configuration
acts on **NVIM_APPNAME** by default, override with '-N nvimdir' or '-A'

**-y**
: indicates do not prompt, answer 'yes' to any prompt

**-u**
: displays this usage message and exits

Commands act on NVIM_APPNAME, override with '-N nvimdir' or '-A'

Without arguments lazyman installs and initializes nvim-lazyman

### EXAMPLES

**lazyman -a**
: installs and initializes the _AstroNvim_ Neovim configuration in _$HOME/.config/nvim-AstroNvim/_

**lazyman -l**
: installs and initializes the _LazyVim_ Neovim configuration in _$HOME/.config/nvim-LazyVim/_

**lazyman -A**
: installs and initializes all supported Neovim configurations

**lazyman -I**
: installs language servers and tools for coding diagnostics

**lazyman -L update**
: runs the **_:Lazy update_** command in the active Neovim configuration (combine with -N or -A to override)

**lazyman -U -N nvim-LazyVim**
: updates the _LazyVim_ Neovim configuration in _$HOME/.config/nvim-LazyVim/_

**lazyman -A -U**
: updates all installed supported Neovim configurations

**lazyman -R -N nvim-LazyVim**
: removes the _LazyVim_ Neovim configuration in _$HOME/.config/nvim-LazyVim/_, its data files, cache, state, and all backups

## AUTHORS

Written by Ronald Record github@ronrecord.com

## LICENSING

LAZYMAN is distributed under an Open Source license.
See the file LICENSE in the LAZYMAN source distribution
for information on terms &amp; conditions for accessing and
otherwise using LAZYMAN and for a DISCLAIMER OF ALL WARRANTIES.

## BUGS

Submit bug reports online at:

https://github.com/doctorfree/nvim-lazyman/issues

Full documentation and sources at:

https://github.com/doctorfree/nvim-lazyman
