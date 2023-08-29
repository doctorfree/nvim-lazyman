# Config patches

The `~/.config/nvim-Lazyman/scripts/patches/` directory contains patches
to Neovim configurations applied after cloning the repo with `lazyman`.

The patch file for a configuration must be named `<Name>.patch` where
`<Name>` is the name of the configuration folder in `~/.config/`.

Some Neovim configurations do not initialize cleanly using `lazyman`
and modifications to the configuration files may be necessary. In this
case it is possible to generate a patch file for the config, place it
here, and re-run `lazyman` to install and initialize that configuration.

The patch should be created from the top of the configuration directory
after making the necessary changes and backing up the original file(s).

For example, the Neovim configuration by [3rd](https://github.com/3rd/config)
contains references to a custom tree-sitter grammar and does not initialize
cleanly with `lazyman`. After commenting out these references a patch can be
created for this config with:

```bash
diff -Naur lua/modules/language-support/tree-sitter.lua.orig \
           lua/modules/language-support/tree-sitter.lua \
           > ~/.config/nvim-Lazyman/scripts/patches/nvim-3rd.patch
```

Subsequently, running:

```bash
lazyman -C https://github.com/3rd/config -D home/dotfiles/nvim -N nvim-3rd
```

will produce a cleanly initialized Neovim configuration.
