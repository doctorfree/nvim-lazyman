---
# the default layout is 'page'
icon: fas fa-info-circle
order: 6
---

<h1 align="center">Lazyman Neovim Configuration Manager</h1>

<div align="center"><p>
    <a href="https://github.com/neovim/neovim"><img src="https://img.shields.io/badge/Neovim-0.9.0-blueviolet.svg?style=flat-square&logo=Neovim&color=90E59A&logoColor=white" alt="Neovim"/></a>
    <a href="https://github.com/doctorfree/nvim-lazyman/pulse"><img src="https://img.shields.io/github/last-commit/doctorfree/nvim-lazyman" alt="Last commit"/></a>
    <a href="https://github.com/doctorfree/nvim-lazyman/pulse"><img src="https://img.shields.io/github/commit-activity/t/doctorfree/nvim-lazyman" alt="Github commit activity"/></a>
    <a href="https://github.com/doctorfree/nvim-lazyman/issues"><img src="https://img.shields.io/github/issues/doctorfree/nvim-lazyman.svg?style=flat-square&label=Issues&color=F05F40" alt="Github issues"/></a>
    <a href="https://github.com/doctorfree/nvim-lazyman/actions/workflows/docker.yml"><img src="https://github.com/doctorfree/nvim-lazyman/actions/workflows/docker.yml/badge.svg" alt="CI Status"/></a>
    <a href="https://github.com/doctorfree/nvim-lazyman/blob/main/LICENSE"><img src="https://img.shields.io/github/license/doctorfree/nvim-lazyman?style=flat-square&logo=MIT&label=License" alt="License"/></a>
</p>
</div>

The Lazyman project can be used to install, initialize, and manage multiple
Neovim configurations. 100 popular Neovim configurations are supported.

The two primary features of the Lazyman project are the `lazyman` command
and the `nvims` shell function. The `lazyman` command provides a menu
interface and command line options to install, initialize, and manage
multiple Neovim configurations. The `nvims` shell function dynamically
generates a fuzzy searchable menu of Neovim configurations from which
to select. The selected configurations can be opened in Neovim, removed,
or a configuration information document can be viewed.

The `lazyman` command is installed as `~/.local/bin/lazyman` and can be used
to install, initialize, remove, and manage multiple Neovim configurations.
