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

lazyman [-A] [-a] [-b branch] [-d] [-k] [-l] [-m] [-n] [-L cmd] [-P] [-q] [-rR] [-C url] [-N nvimdir] [-U] [-y] [-u]

## DESCRIPTION

The *lazyman* command can be used to install, initialize, and manage
multiple Neovim configurations. Neovim configurations are installed
and initialized in separate subdirectories of ***~/.config/*** with
associated separate subdirectories in ***~/.local/share/***,
***~/.local/state/***, and ***~/.cache/***.

The *lazyman* Neovim configuration is installed as ***~/.config/nvim-lazyman***
and the *lazyman* command is installed as ***~/.local/bin/lazyman***.

The Neovim configuration used by the *nvim* command is determined by
the **NVIM_APPNAME** environment variable (Neovim 0.9 and later only).
Set the **NVIM_APPNAME** environment variable in the shell initialization
file (typically ***~/.bashrc*** or ***~/.zshrc***) by using the *export*
shell builtin:

```bash
export NVIM_APPNAME="<nvimdir>"
```

where ***\<nvimdir\>*** is the subdirectory in ***~/.config/*** that holds the
desired Neovim configuration. For example, to use the *LazyVim* Neovim
configuration in ***~/.config/nvim-LazyVim/*** the export command would be:

```bash
export NVIM_APPNAME="nvim-LazyVim"
```

Aliases can also be used to switch quickly and easily between Neovim configurations.
For example, aliases could be created to use Neovim configurations installed in
***~/.config/nvim-python*** and ***~/.config/nvim-work*** as follows:

```bash
alias vip='function _vip(){ export NVIM_APPNAME="nvim-python"; nvim $* };_vip'
alias viw='function _viw(){ export NVIM_APPNAME="nvim-work"; nvim $* };_viw'
```

After sourcing these aliases in your shell, to invoke Neovim with the Python
configuration run ***vip filename.py*** and to invoke Neovim with your Work config
run ***viw proposal.md***.

## OPTIONS

**-A**
: indicates install all supported Neovim configurations

**-a**
: indicates install and initialize AstroNvim

**-b branch**
: specifies an nvim-lazyman git branch to checkout

**-d**
: indicates debug mode

**-k**
: indicates install and initialize Kickstart

**-l**
: indicates install and initialize LazyVim

**-m**
: indicates install and initialize nvim-multi

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
: installs and initializes the *AstroNvim* Neovim configuration in *$HOME/.config/nvim-astro/*

**lazyman -l**
: installs and initializes the *LazyVim* Neovim configuration in *$HOME/.config/nvim-LazyVim/*

**lazyman -A**
: installs and initializes all supported Neovim configurations

**lazyman -U -N nvim-LazyVim**
: updates the *LazyVim* Neovim configuration in *$HOME/.config/nvim-LazyVim/*

**lazyman -A -U**
: updates all installed supported Neovim configurations

**lazyman -R -N nvim-LazyVim**
: removes the *LazyVim* Neovim configuration in *$HOME/.config/nvim-LazyVim/*, its data files, cache, state, and all backups

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

