---
title: NVIMS
section: 1
header: User Manual
footer: nvims 2.1.8
date: July 17, 2023
---

# NVIMS

## NAME

nvims - Open Neovim using a fuzzy search/selection of a Lazyman installed configuration

## SYNOPSIS

nvims [-c command] [-C filter] [-I] [-R] [-S file] [-U] [file1 [file2] ...]

Where:

## DESCRIPTION

The `lazyman` installation and configuration automatically configures
convenience aliases and shell functions for Lazyman installed Neovim
configurations. One of these is the `nvims` shell function which dynamically
creates a fuzzy searchable menu of installed Neovim configurations and launches
Neovim with the selected Lazyman Neovim configuration.

See `~/.config/nvim-Lazyman/.lazymanrc`.

Similarly, a `neovides` shell function can be used to select a Neovim
configuration for use with the Neovim GUI `neovide`.

Both the `nvims` shell function and `neovides` shell function accept
command line arguments. The `-R` flag indicates removal of the selected
Neovim configuration. The `-C filter` option to `nvims` and `neovides`
specifies a filter string to match when generating the list of Neovim
configurations to search and select. The `-I` flag indicates display
the selected configuration information document. Additional command
line arguments are described below.

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

## ALIASES

When a Neovim configuration is selected using the `nvims` shell function,
an alias for `vi` is automatically created. Subsequent invocations of `vi`
will use the previously selected Neovim configuration. This alias persists
throughout the remainder of the current shell session or until another Neovim
configuration is selected using `nvims`. A similar alias is set for `neovide`
by the `neovides` shell function enabling subsequent invocations of `neovide`
to use the previously selected `neovides` Neovim configuration.

To use another Neovim configuration while this alias is active, invoke `nvim`
directly using the `NVIM_APPNAME` environment variable on the command line.
For example, to use the `nvim-EcoVim` Neovim configuration after an alias for
`vi` has been set by `nvims`, execute the following command:

```bash
NVIM_APPNAME="nvim-EcoVim" nvim ...
```

The `.lazymanrc` file also creates aliases for `ls`, `less`, and others
including a `tldrf` alias that allows fuzzy searching and selecting from
the list of cheatsheets supported by `tldr`. Try out the `tldrf` command
to quickly and easily display documentation for thousands of commands.

## OVERRIDES

When using either the `nvims` or `neovides` shell functions, selected Neovim
configuration options can be overridden using either the `-S file` command
line argument or entries in the file `~/.config/nvim-Lazyman/overrides.lua`.
The `-S file` argument is described below in the `OPTIONS` section.

The default overrides file, `~/.config/nvim-Lazyman/overrides.lua`, is used in
the absence of any `-S file` argument. This file can be used to override options
in a Neovim configuration when invoking Neovim with `nvims` or `neovides`.

Lua in this file is executed after the first file has been read.

To override an option for all Lazyman Neovim configurations invoked with `nvims`
or `neovided`, set it in `overrides.lua`. For example, to enable line numbers
(both absolute and relative) for all configurations invoked with these shell
functions, add the following lines to `overrides.lua`:

```lua
vim.opt.number = true
vim.opt.relativenumber = true
```

See the Neovim documentation for a
[short explanation](https://neovim.io/doc/user/quickref.html#option-list)
of each available option.

Global option overrides can also be set here and Lua code can be used.
For example:

```lua
vim.g.python3_host_prog = vim.fn.exepath("python3")
```

Unfortunately, `mapleader` must be set before `lazy.nvim` is loaded so for
Lazy based configurations setting `vim.g.mapleader` here is not supported.

If this file only contains Lua comments then it will not be sourced.
If it contains anything other than Lua comments then, when using `nvims` or
`neovides`, Neovim will be invoked with:

```bash
nvim -S "${HOME}/.config/nvim-Lazyman/overrides.lua" ...
```

## OPTIONS

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

### EXAMPLES

`nvims` : presents a fuzzy searchable and selectable menu of Neovim configurations and opens Neovim using the selected configuration

`neovides` : presents a fuzzy searchable and selectable menu of Neovim configurations and opens Neovide using the selected configuration

`nvims -R` : presents a fuzzy searchable and selectable menu of Neovim configurations and removes the selected Neovim configuration

`nvims -C astro foo.lua` : presents a fuzzy searchable and selectable menu of Neovim configurations with names containing the case insensitive string 'astro' and opens the file `foo.lua` with Neovim using the selected configuration

### Help

The Lazyman Neovim configuration provides `vimdoc` help for the `nvims` and
`neovides` shell functions. While in Neovim using the `nvim-Lazyman`
configuration, view the `vimdoc` help for the `nvims` shell function with the
command `:help Nvims`. A shortcut key binding for this help command has been
configured. Use `,hn` to quickly access the `vimdoc` help for `nvims`.

## AUTHORS

Written by Ronald Record `github@ronrecord.com`

## LICENSING

NVIMS is distributed under an Open Source license.
See the file LICENSE in the NVIMS source distribution
for information on terms &amp; conditions for accessing and
otherwise using NVIMS and for a DISCLAIMER OF ALL WARRANTIES.

## BUGS

Submit bug reports online at:

<https://github.com/doctorfree/nvim-lazyman/issues>

## SEE ALSO

**lazyman**(1), **lazyman-keymaps**(5)

Full documentation and sources at:

<https://github.com/doctorfree/nvim-lazyman>
