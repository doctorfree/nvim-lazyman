---
# the default layout is 'page'
icon: fas fa-arrow-circle-down
order: 1
---

<h1 align="center">Lazyman Neovim Configuration Manager</h1>

```bash
# Install lazyman with the following two commands:
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
$HOME/.config/nvim-Lazyman/lazyman.sh
```

## Requirements

The `lazyman` Neovim configuration manager requires Neovim 0.9. The `lazyman`
installation and initialization process checks for Neovim 0.9 and, if not
found, installs it and required dependencies and tools.

Lazyman requires Linux or macOS, git, and the Bash shell.

- Neovim 0.9 (automatically installed if not found)
- Unix/Linux/macOS
- Bash
- Git

## Installation

The Lazyman installation process consists of two steps.

Step 1, clone the Lazyman repository:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
```

Step 2, initialize the Lazyman Neovim configuration:

```bash
$HOME/.config/nvim-Lazyman/lazyman.sh
```

These 2 steps perform the following:

1. Download the Lazyman Neovim configuration
1. Initialize the Lazyman Neovim configuration which:
   1. Installs language servers and tools for coding diagnostics
   1. Installs the latest version of Neovim if not already installed
   1. Installs and initializes configured Neovim plugins

After the download and initialization are complete, execute the `lazyman`
command found in `~/.local/bin/lazyman`.

By default, Lazyman uses the native package manager to install Neovim
dependencies and tools. Supported native package managers include:

- `apt` or `apt-get` on Debian based platforms (e.g. Ubuntu)
- `dnf` or `yum` on RPM based platforms (Fedora, CentOS, Red Hat)
- `pacman` on Arch Linux and Arch-Like platforms
- `apk` on Alpine Linux
- `xbps-install` on Void Linux
- `zypper` on SUSE Linux

Alternately, command line options exist to direct `lazyman` to install Neovim,
dependencies and tools using [Homebrew](https://brew.sh) or to skip the Neovim
installation altogether. If no supported native package manager is found then
Homebrew is used. Homebrew is always used on macOS.

To install Neovim, dependencies, and tools using Homebrew rather than the
native package manger, invoke `lazyman` with the `-h` option when initializing:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
$HOME/.config/nvim-Lazyman/lazyman.sh -h
```

To compile and install the nightly build of Neovim, use the `-H` option:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
$HOME/.config/nvim-Lazyman/lazyman.sh -H
```

The installation of Neovim 0.9, language servers, and tools ensures a proper
runtime environment. To avoid the installation of Homebrew, Neovim, language
servers, and tools altogether, execute `lazyman -Z`:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
$HOME/.config/nvim-Lazyman/lazyman.sh -Z
```

Note that circumventing the Neovim installation means that Neovim 0.9 must
be installed in some other manner. Also, language servers and tools
required by some Neovim configurations may not be present. However, some
may prefer to handle the installation of Neovim 0.9, language servers,
and tools on their own.

If, after initializing Lazyman with `lazyman -Z`, you wish to let Lazyman
install Neovim 0.9, language servers and tools, then issue the command
`lazyman -I` or choose the `Install Tools` lazyman menu option.

The `lazyman -I` command can also be used to install additional tools, often
resolving some `:checkhealth` warnings.

### Bootstrap

To bootstrap the Lazyman Neovim configuration manager, the `lazyman.sh` script
must be downloaded and executed. The download can be performed with `git`,
`curl`, `wget`, or a copy/paste.

The recommended bootstrap procedure is with `git`:

Clone the repository with `git` and execute `lazyman.sh`:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
$HOME/.config/nvim-Lazyman/lazyman.sh
```

Alternatively, download the `lazyman.sh` script and execute it.
For example, with `curl`:

```bash
curl -fsS https://raw.githubusercontent.com/doctorfree/nvim-lazyman/main/lazyman.sh > /tmp/lazyman.sh
chmod 755 /tmp/lazyman.sh
/tmp/lazyman.sh
rm -f /tmp/lazyman.sh
```

Once the `lazyman.sh` script has been downloaded and executed, subsequent
Lazyman operations can be performed with the `lazyman` command found in
`~/.local/bin/lazyman`. The manual page can be viewed with `man lazyman`.

Neovim 0.9 and later users can use the `NVIM_APPNAME` environment variable
to control where Neovim looks for its configuration.

### Manual installation

If you do not wish to use the automated installation and initialization
provided by the `lazyman.sh` script, manual installation and initialization
can be performed. See the Lazyman Wiki article on
[Manual Installation](https://github.com/doctorfree/nvim-lazyman/wiki/Manual_Installation)
to manually install rather than use the automated installation feature of
the `lazyman` command.
