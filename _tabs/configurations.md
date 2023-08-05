---
# the default layout is 'page'
icon: fas fa-info-circle
order: 2
---

## Lazyman Supported Configurations

After installing and initializing `lazyman`, additional Neovim configurations
can be installed and initialized using the `lazyman` command. Additional Neovim
configurations can be installed using the `-C url` and `-N nvimdir` options.

All of the supported Lazyman Neovim configuration can be managed using
the `lazyman` command interactive menu interface. The `lazyman` menu is
presented by invoking `lazyman` without arguments after the initial
bootstrap process is complete. Lazyman Neovim configurations can
also be managed with `lazyman` command line operations.

Currently 100 popular Neovim configurations are supported in the
following configuration categories:

- [Base configurations](#base-configurations)
- [Language configurations](#language-configurations)
- [Personal configurations](#personal-configurations)
- [Starter configurations](#starter-configurations)
- [Custom configurations](#custom-configurations)

### Base configurations

The Lazyman "Base" Neovim configurations are well tested, full featured Neovim
configurations that provide an excellent base starting point for exploring
the features of `lazyman` and the wealth of Neovim configuration possibilities.

All "Base" Neovim configurations can be installed and initialized with `lazyman -B`.

#### Lazyman "Base" Neovim configurations

- [nvim-Lazyman](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Lazyman.md)
  - See the [Installation section](https://lazyman.dev/install)
  - Installed and initialized by default
- [Abstract](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Abstract.md)
  - Preconfigured Neovim as IDE (see <https://abstract-ide.github.io/site/>)
  - Install and initialize with `lazyman -g`
- [AstroNvimPlus](https://github.com/doctorfree/nvim-lazyman/blob/main/info/AstroNvimPlus.md)
  - Install and initialize with `lazyman -a`
  - An example [AstroNvim community](https://github.com/AstroNvim/astrocommunity) plugins configuration is added
- [Basic IDE](https://github.com/doctorfree/nvim-lazyman/blob/main/info/BasicIde.md)
  - Maintained by LunarVim, this is a descendent of "Neovim from Scratch"
  - All plugins are pinned to known working versions
  - Install and initialize with `lazyman -j`
- [Ecovim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Ecovim.md)
  - Install and initialize with `lazyman -e`
  - Tailored for frontend development with React and Vue.js
- [LazyVim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/LazyVim.md)
  - The [LazyVim starter](https://github.com/LazyVim/starter) configuration
  - Install and initialize with `lazyman -l`
- [LunarVim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/LunarVim.md)
  - Installs LunarVim plus the [IfCodingWereNatural custom user config](https://youtu.be/Qf9gfx7gWEY)
  - Install and initialize with `lazyman -v`
- [MagicVim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/MagicVim.md)
  - Custom Neovim configuration designed to be light and fast
  - LSP, Treesitter & Code Completion all work out of the box
  - Auto install when you open a file type that doesn't have code completion for it yet
  - Uses Packer plugin manager, installs in `~/.config/nvim-MagicVim`
  - Install and initialize with `lazyman -m`
- [NvChad](https://github.com/doctorfree/nvim-lazyman/blob/main/info/NvChad.md)
  - Advanced [customization of NvChad](https://github.com/doctorfree/NvChad-custom)
  - Good [introductory video](https://youtu.be/Mtgo-nP_r8Y) to NvChad
  - Install and initialize with `lazyman -c`
- [penguinVim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Penguin.md)
  - Aims to provide a base configuration with beautiful UI and fast startup time
  - Install and initialize with `lazyman -o`
- [SpaceVim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/SpaceVim.md)
  - SpaceVim started in December 2016, mature and well supported
  - Standard SpaceVim install uses `curl`:
    - `curl -sLf https://spacevim.org/install.sh | bash`
  - Lazyman custom SpaceVim configuration installed in `~/.SpaceVim.d/`
  - Install and initialize using Lazyman with `lazyman -s`

### Language configurations

In addition to the base Neovim configurations listed above, `lazyman` can
install and initialize several "Language" Neovim configurations. These can
be used as programming or document format specific Neovim configurations.
The `Language` category configurations either employ a specific language
or target specific language(s).

[Note:] The `Language` category does not include all supported Lazyman Neovim
configurations with programming language support. In fact, most Neovim
configurations support several programming languages. The `Language` category
simply serves as a convenience to get started exploring language support.

All of the "Language" configurations can be installed and initialized with
the command `lazyman -L all`. Individual "Language" configurations can be
installed with the `-L lang` option.

#### Lazyman "Language" Neovim configurations

- [AlanVim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/AlanVim.md)
  - Oriented toward Python development
  - Install and initialize with `lazyman -L AlanVim`
- [Allaman](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Allaman.md)
  - One of the inspirations for `Lazyman`
  - Excellent support for Python, Golang, Rust, YAML, and more
  - Install and initialize with `lazyman -L Allaman`
- [CatNvim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/CatNvim.md)
  - Included in the `Language` category as the configuration is written in `C`
  - Yes, this is a Neovim configuration written in the [C programming language](https://en.wikipedia.org/wiki/C_(programming_language))
  - `CatNvim` is a `LazyVim` based configuration
  - Install and initialize with `lazyman -L CatNvim`
- [Cpp](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Cpp.md)
  - `NvChad` based Neovim config with C++ formatting, debugging, and diagnostics
  - Dreams of Code [video tutorial](https://youtu.be/lsFoZIg-oDs)
  - Install and initialize with `lazyman -L Cpp`
- [Go](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Go.md)
  - `NvChad` based Neovim config with Go formatting, debugging, and diagnostics
  - Dreams of Code [video tutorial](https://youtu.be/i04sSQjd-qo)
  - Install and initialize with `lazyman -L Go`
- [Go2one](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Go2one.md)
  - Neovim Go development environment that does not touch standard Neovim configuration folders
  - The `lazyman` install does not use the `go2one` script
  - Install and initialize with `lazyman -L Go2one`
- [Insis](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Insis.md)
  - Out-of-the-box Neovim IDE solution with simple development environment setup
  - Install and initialize with `lazyman -L Insis`
- [Knvim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Knvim.md)
  - Targets Python, Bash, LaTeX, Markdown, and C/C++
  - See the [Knvim Config Cheat Sheet](https://github.com/knmac/knvim/blob/main/res/cheatsheet.md)
  - Install and initialize with `lazyman -L Knvim`
- [LaTeX](https://github.com/doctorfree/nvim-lazyman/blob/main/info/LaTeX.md)
  - Neovim configuration optimized for writing in LaTeX
  - Personal Neovim configuration of [Benjamin Brast-McKie](http://www.benbrastmckie.com)
  - Keymaps and more described in the configuration [Cheatsheet](https://github.com/benbrastmckie/.config/blob/master/CheatSheet.md)
  - Blog article by the author detailing [tools used by his configuration](http://www.benbrastmckie.com/tools#access)
  - [Video playlist](https://www.youtube.com/watch?v=_Ct2S65kpjQ&list=PLBYZ1xfnKeDRhCoaM4bTFrjCl3NKDBvqk) of tutorials on using this config for writing LaTeX in Neovim
  - Install and initialize with `lazyman -L LaTeX`
- [LazyIde](https://github.com/doctorfree/nvim-lazyman/blob/main/info/LazyIde.md)
  - LazyVim IDE config for Neovim
  - Install and initialize with `lazyman -L LazyIde`
- [LunarIde](https://github.com/doctorfree/nvim-lazyman/blob/main/info/LunarIde.md)
  - LunarVim config based on [Christian Chiarulli's](https://github.com/ChristianChiarulli/lvim)
  - Java, Python, Lua, Go, JavaScript, Typescript, React, and Rust IDE
  - Install and initialize with `lazyman -L LunarIde`
- [LvimIde](https://github.com/doctorfree/nvim-lazyman/blob/main/info/LvimIde.md)
  - Not to be confused with `LunarVim`, this is a standalone Neovim configuration
  - Modular configuration with LSP support for 60+ languages
  - Debug support for c, cpp, dart, elixir, go, haskell, java, javascript/typescript, lua, php, python, ruby, rust
  - Install and initialize with `lazyman -L LvimIde`
- [Magidc](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Magidc.md)
  - Java, Python, Lua, and Rust IDE
  - Install and initialize with `lazyman -L Magidc`
- [Nv](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Nv.md)
  - `LazyVim` based Neovim configuration
  - Andreas Gerlach develops smart farming tech and maintains the `Sway` edition of `Manjaro-arm`
  - Install and initialize with `lazyman -L Nv`
- [NV-IDE](https://github.com/doctorfree/nvim-lazyman/blob/main/info/NV-IDE.md)
  - Configuration oriented for web developers (rails, ruby, php, html, css, SCSS, javascript)
  - Install and initialize with `lazyman -L NV-IDE`
- [Orange](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Orange.md)
  - Modern Neovim configuration for coding React and TypeScript
  - Install and initialize with `lazyman -L Orange`
- [Python](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Python.md)
  - `NvChad` based Neovim config with Python formatting, debugging, and diagnostics
  - Dreams of Code [video tutorial](https://youtu.be/4BnVeOUeZxc)
  - These features are included in the Base `NvChad` custom add-on (`lazyman -c`)
  - Install and initialize `lazyman -L Python`
- [Rust](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Rust.md)
  - `NvChad` based Neovim config with Rust formatting, debugging, and diagnostics
  - Dreams of Code [video tutorial](https://youtu.be/mh_EJhH49Ms)
  - Install and initialize with `lazyman -L Rust`
- [SaleVim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/SaleVim.md)
  - `Salesforce` optimized IDE with custom features for editing `Apex`, `Visualforce`, and `Lightning` code
  - Install and initialize with `lazyman -L SaleVim`
- [Shuvro](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Shuvro.md)
  - Significantly improved fork of [Abouzar Parvan's](https://github.com/abzcoding/lvim) advanced `LunarVim` config
  - Install and initialize with `lazyman -L Shuvro`
- [Webdev](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Webdev.md)
  - LazyVim based config for web developers
  - JavaScript, Typescript, React, and Tailwind CSS support
  - Install and initialize with `lazyman -L Webdev`

### Personal configurations

In addition to the base and language Neovim configurations listed above,
`lazyman` can install and initialize several "Personal" Neovim configurations.
These are used as personal Neovim configurations, so there are no guarantees
made about stability or compatibility. Each supported personal configuration
uses some interesting approach and provides significant value making them worthy
of study, exploration, and possible use in tailoring your own configuration.

All of the 'Personal' configurations can be installed and initialized with
the command `lazyman -W`. Individual 'Personal' configurations can be
installed with the `-w conf` option.

#### Lazyman "Personal" Neovim configurations

- [3rd](https://github.com/doctorfree/nvim-lazyman/blob/main/info/3rd.md)
  - `lazyman -w 3rd`
  - Patch in `~/.config/nvim-Lazyman/scripts/patches/nvim-3rd.patch` applied
  - Example [custom tree-sitter grammar](https://github.com/3rd/syslang)
- [Adib](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Adib.md)
  - Personal Neovim configuration of Adib Hanna
  - Tips, distros, and configuration [demo video](https://youtu.be/8SVPOKZVaMU)
  - Install and initialize with `lazyman -w Adib`
- [Artur](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Artur.md)
  - Personal Neovim configuration of Artur Gomes
  - Install and initialize with `lazyman -w Artur`
- [Beethoven](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Beethoven.md)
  - Personal Neovim configuration of mechanical engineering student Alexander Vazquez
  - `lazyman -w Beethoven`
- [Brain](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Brain.md)
  - Well structured personal config based on the [KISS](https://en.wikipedia.org/wiki/KISS_principle) principle
  - `lazyman -w Brain`
- [Charles](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Charles.md)
  - Well structured lazy config with several setup scripts and a Wiki
  - Install and initialize with `lazyman -w Charles`
- [Craftzdog](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Craftzdog.md)
  - Takuya Matsuyama's Neovim configuration
  - Install and initialize with `lazyman -w Craftzdog`
- [Daniel](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Daniel.md)
  - `LunarVim` based config of Daniel Vera Gilliard
  - Install and initialize with `lazyman -w Daniel`
- [Dillon](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Dillon.md)
  - Author of [tsc.nvim](https://github.com/dmmulroy/tsc.nvim), asynchronous TypeScript type-checking
  - Install and initialize with `lazyman -w Dillon`
- [Elianiva](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Elianiva.md)
  - Personal Neovim configuration of Dicha Zelianivan Arkana
  - `lazyman -w Elianiva`
- [Elijah](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Elijah.md)
  - Personal Neovim configuration of Elijah Manor
  - `lazyman -w Elijah`
- [Enrique](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Enrique.md)
  - Personal Neovim configuration of Enrique Mejidas
  - `lazyman -w Enrique`
- [Kristijan](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Kristijan.md)
  - Personal Neovim configuration of Kristijan Husak, author of several Neovim plugins including `orgmode` and `vim-dadbod-ui`
  - `lazyman -w Kristijan`
- [Heiker](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Heiker.md)
  - Neovim config of Heiker Curiel, author of [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)
  - Install and initialize with `lazyman -w Heiker`
- [J4de](https://github.com/doctorfree/nvim-lazyman/blob/main/info/J4de.md)
  - Personal Neovim configuration of Jade Fox
  - `lazyman -w J4de`
- [Josean](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Josean.md)
  - Josean Martinez [video tutorial](https://youtu.be/vdn_pKJUda8)
  - `lazyman -w Josean`
- [JustinLvim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/JustinLvim.md)
  - LunarVim based Neovim configuration by Justin Angeles
  - Install and initialize with `lazyman -w JustinLvim`
- [JustinNvim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/JustinNvim.md)
  - LazyVim based Neovim configuration by Justin Angeles
  - Justin has created a series of YouTube videos on configuring LazyVim
    - [Part 1 - Colorschemne](https://youtu.be/LznwxUSZz_8)
    - [Part 2 - Options](https://youtu.be/I4flypojhUk)
    - [Part 3 - Keymaps](https://youtu.be/Vc_5feJ9F5k)
    - [Part 4 - Final Thoughts](https://youtu.be/eRQHWeJ3D7I)
  - Install and initialize with `lazyman -w JustinNvim`
- [Kodo](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Kodo.md)
  - Personal Neovim configuration of chadcat, a high school student with no life
  - `Kodo` is a Neovim configuration that looks good and is fast (startuptime < 0.035s)
  - Install and initialize with `lazyman -w Kodo`
- [Lukas](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Lukas.md)
  - Packer based personal Neovim configuration of Lukas Reineke, author of many excellent Neovim plugins
  - Requires an externally installed `lua-language-server` and `efm-langserver`
  - Install and initialize with `lazyman -w Lukas`
- [Maddison](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Maddison.md)
  - Personal Neovim configuration of Maddison Hellstrom
  - Author of `incline.nvim` floating statuslines, `SchemaStore.nvim` JSON schemas, `mapx.nvim` better keymaps
  - Install and initialize with `lazyman -w Maddison`
- [Metis](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Metis.md)
  - Neovim config by the creator of `MetisLinux` and `Ewm`
  - Install and initialize with `lazyman -w Metis`
- [Mini](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Mini.md)
  - Uses the [mini.nvim](https://github.com/echasnovski/mini.nvim) library
  - Personal configuration of the `mini.nvim` author
  - Install and initialize with `lazyman -M`
- [ONNO](https://github.com/doctorfree/nvim-lazyman/blob/main/info/ONNO.md)
  - One of the primary inspirations for Lazyman
  - Install and initialize with `lazyman -w ONNO`
- [OnMyWay](https://github.com/doctorfree/nvim-lazyman/blob/main/info/OnMyWay.md)
  - The personal Neovim configuration of Richard Ariza
  - Install and initialize with `lazyman -w OnMyWay`
- [Optixal](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Optixal.md)
  - Hybrid Neovim config for developers with a functional yet aesthetic experience
  - Uses a combination of vimscript and lua with the `vim-plug` plugin manager
  - Install and initialize with `lazyman -w Optixal`
- [Orhun](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Orhun.md)
  - Personal AstroNvim based Neovim configuration of open source developer Orhun Parmaksiz
  - Install and initialize with `lazyman -w Orhun`
- [Primeagen](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Primeagen.md)
  - Packer based [config from scratch](https://youtu.be/w7i4amO_zaE) by ThePrimeagen"
  - Install and initialize with `lazyman -w Primeagen`
- [Rafi](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Rafi.md)
  - [Extensible](https://github.com/rafi/vim-config#extending) Neovim configuration
  - Install and initialize with `lazyman -w Rafi`
- [Roiz](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Roiz.md)
  - Just a random Neovim config found on Github, works well
  - Install and initialize with `lazyman -w Roiz`
- [Simple](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Simple.md)
  - A remarkably effective Neovim configuration in only one small file
  - The author's [video description of this config](https://youtu.be/AzhSnM0uHvM)
  - Install and initialize with `lazyman -w Simple`
- [Slydragonn](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Slydragonn.md)
  - [Introductory video](https://youtu.be/vkCnPdaRBE0)
  - `lazyman -w Slydragonn`
- [Spider](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Spider.md)
  - AstroNvim based configuration with animated status bar and smooth scroll
  - [Introductory video](https://youtu.be/Lj6MZsKl9MU)
  - Install and initialize with `lazyman -w Spider`
- [Traap](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Traap.md)
  - [Introductory video](https://youtu.be/aD9j6d9pgtc)
  - Install and initialize with `lazyman -w Traap`
- [Wuelner](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Wuelner.md)
  - Wuelner's Neovim setup follows a well-defined philosophy governed by coherence and minimalism
  - Install and initialize with `lazyman -w Wuelner`
- [xero](https://github.com/doctorfree/nvim-lazyman/blob/main/info/xero.md)
  - personal neovim configuration of [xero harrison](https://x-e.ro/)
  - xero is a fine example, as are many here, of the unix greybeard
  - install and initialize with `lazyman -w xero`
- [Xiao](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Xiao.md)
  - Personal Neovim configuration of XiaoZhang
  - Install and initialize with `lazyman -w Xiao`

### Starter configurations

The "Starter" Neovim configurations include `Basic`, `Kickstart`, `NvPak`,
`Modern`, `PDE`, and those provided by [VonHeikemen](https://github.com/VonHeikemen),
the author of [LSP Zero](https://github.com/VonHeikemen/lsp-zero.nvim).

All of the "Starter" configurations can be installed and initialized with
the command `lazyman -X`. Individual "Starter" configurations can be
installed with the `-x conf` option.

#### Lazyman "Starter" Neovim configurations

- [AstroNvimStart](https://github.com/doctorfree/nvim-lazyman/blob/main/info/AstroNvimStart.md)
  - Default AstroNvim example configuration
  - Install and initialize with `lazyman -x AstroNvimStart`
- [Barebones](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Barebones.md)
  - Starter bare bones LazyVim config by Traap with [video introduction](https://youtu.be/xpBoiTIiepc)
  - Install and initialize with `lazyman -x Barebones`
- [Basic](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Basic.md)
  - Starter config by the author of NvChad with [video tutorial](https://youtube.com/playlist?list=PLYVQrj2EVSUL1NqYn3jsIVXG3U9eWaMcq)
  - Install and initialize with `lazyman -x Basic`
- [CodeArt](https://github.com/doctorfree/nvim-lazyman/blob/main/info/CodeArt.md)
  - Use Neovim as general purpose IDE
  - Install and initialize with `lazyman -x CodeArt`
- [CosmicNvim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Cosmic.md)
  - Install `Node.js`, `prettierd`, and `eslint_d`
  - Install and initialize with `lazyman -x Cosmic`
- [Ember](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Ember.md)
  - Dan is a computer science student at Arizona State University
  - Install and initialize with `lazyman -x Ember`
- [Fennel](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Fennel.md)
  - An opinionated configuration reminiscent of Doom-Emacs, written in Fennel
  - Install and initialize with `lazyman -x Fennel`
- [Kickstart](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Kickstart.md)
  - Popular starting point, small, single file, well documented, modular
  - Install and initialize with `lazyman -k`
- [nvim2k](https://github.com/doctorfree/nvim-lazyman/blob/main/info/2k.md)
  - [Video walkthrough](https://youtu.be/WfhylGI_F-o)
  - Install and initialize with `lazyman -x 2k`
- [NvPak](https://github.com/doctorfree/nvim-lazyman/blob/main/info/NvPak.md)
  - PaK in Farsi means pure, something that is in its purest form
  - Install and initialize with `lazyman -x NvPak`
- [HardHacker](https://github.com/doctorfree/nvim-lazyman/blob/main/info/HardHacker.md)
  - A theme-driven modern Neovim configuration
  - Install and initialize with `lazyman -x HardHacker`
- [JustinOhMy](https://github.com/doctorfree/nvim-lazyman/blob/main/info/JustinOhMy.md)
  - Full featured starter LazyVim based Neovim configuration by Justin Angeles
  - Justin has created a [YouTube video](https://youtu.be/mpSuIfBKP-s) describing this config
  - Install and initialize with `lazyman -x JustinOhMy`
- [Modern](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Modern.md)
  - Configure Neovim as a modernized development environment
  - Details described in [an excellent Medium article](https://alpha2phi.medium.com/modern-neovim-configuration-recipes-d68b16537698)
  - Install and initialize with `lazyman -x Modern`
- [PDE](https://github.com/doctorfree/nvim-lazyman/blob/main/info/pde.md)
  - Configure Neovim as a Personalized Development Environment (PDE)
  - Install and initialize with `lazyman -x pde`
- [Kabin](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Kabin.md)
  - One of the AstroNvim "Black Belt" example advanced configurations
  - `lazyman -x Kabin`
- [Lamia](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Lamia.md)
  - One of the AstroNvim "Black Belt" example advanced configurations
  - `lazyman -x Lamia`
- [Micah](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Micah.md)
  - One of the AstroNvim "Black Belt" example advanced configurations
  - `lazyman -x Micah`
- [Normal](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Normal.md)
  - Based on AstroNvim with additional features
  - Install and initialize with `lazyman -x Normal`
- [Rohit](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Rohit.md)
  - Good example use of [mason-tool-installer](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim)
  - Install and initialize with `lazyman -x Rohit`
- [Scratch](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Scratch.md)
  - Jumping-off point for new Neovim users or those who have declared config bankruptcy
  - Install and initialize with `lazyman -x Scratch`
- [SingleFile](https://github.com/doctorfree/nvim-lazyman/blob/main/info/SingleFile.md)
  - A clean, organized pre-configured Neovim configuration guide in a single `init.lua`
  - Install and initialize with `lazyman -x SingleFile`

#### VonHeikemen Starter configurations

- [BasicLsp](https://github.com/doctorfree/nvim-lazyman/blob/main/info/BasicLsp.md)
  - Example lua configuration showing one way to setup LSP servers without plugins
  - Install and initialize with `lazyman -x BasicLsp`
- [BasicMason](https://github.com/doctorfree/nvim-lazyman/blob/main/info/BasicMason.md)
  - Minimal setup with `mason.nvim`
  - Install and initialize with `lazyman -x BasicMason`
- [LspCmp](https://github.com/doctorfree/nvim-lazyman/blob/main/info/LspCmp.md)
  - Minimal setup with `nvim-lspconfig` and `nvim-cmp`
  - Install and initialize with `lazyman -x LspCmp`
- [Extralight](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Extralight.md)
  - Single file lightweight configuration focused on providing basic features
  - Install and initialize with `lazyman -x Extralight`
- [Minimal](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Minimal.md)
  - Small configuration without third party plugins
  - Install and initialize with `lazyman -x Minimal`
- [Modular](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Modular.md)
  - Same as `StartMason` but everything is split in modules
  - Install and initialize with `lazyman -x Modular`
- [StartBase](https://github.com/doctorfree/nvim-lazyman/blob/main/info/StartBase.md)
  - Small configuration that includes a plugin manager
  - Install and initialize with `lazyman -x StartBase`
- [Opinionated](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Opinion.md)
  - Includes a combination of popular plugins
  - Install and initialize with `lazyman -x Opinion`
- [StartLsp](https://github.com/doctorfree/nvim-lazyman/blob/main/info/StartLsp.md)
  - Configures the built-in LSP client with autocompletion, based on `Opinionated`
  - Install and initialize with `lazyman -x StartLsp`
- [StartMason](https://github.com/doctorfree/nvim-lazyman/blob/main/info/StartMason.md)
  - Same as `StartLsp` but uses [mason.nvim](https://github.com/williamboman/mason.nvim) to install language servers
  - Install and initialize with `lazyman -x StartMason`

### Custom configurations

Lazyman includes support for `Custom` Neovim configurations. To install and initialize
a Neovim configuration not supported out-of-the-box by Lazyman, use the `-C url` and
`-N nvimdir` options to `lazyman`. After the installation and initialization completes,
set the `NVIM_APPNAME` environment variable to use the newly created Neovim configuration:

```bash
export NVIM_APPNAME="<nvimdir>"
```

Where `<nvimdir>` is the argument provided to `-N` above.

For example, to install and initialize the Packer based Neovim configuration
hosted at <https://github.com/VapourNvim/VapourNvim> and place it in
`~/.config/VapourNvim`, execute the command:

```bash
lazyman -C https://github.com/VapourNvim/VapourNvim -N VapourNvim -P
export NVIM_APPNAME="VapourNvim"
nvim
```

Sometimes people place their Neovim configuration in a repository subdirectory
along with other configurations in a `dotfiles` repo. To retrieve only the
Neovim configuration subdirectory in such a repository, use the `-b branch`
and `-D subdir` arguments to `lazyman` along with `-C url` and `-N nvimdir`.
If no `-b branch` is provided then the default git branch is assumed to be
`master`. For example, to install and initialize the Neovim configuration
hosted at <https://github.com/alanRizzo/dot-files> in the subdirectory `nvim`
with default branch `main`, place it in `~/.config/nvim-AlanVim`, and
initialize it with Packer:

```bash
lazyman -b main -C https://github.com/alanRizzo/dot-files -D nvim -N nvim-AlanVim -P
```

Note the `-b main` argument in this Lazyman command. When specifying a
subdirectory of a repository with `-D <subdir>` it is necessary to also
provide the default branch of the repository if not `master`.

Custom Neovim configurations may require additional setup work. Often
a custom Lazyman configuration will appear to work without issue but
contain references to `~/.config/nvim/` in its configuration files. For
example, a configuration's dashboard may contain a reference to
`~/.config/nvim/init.lua`. References like this can be fixed so the
configuration is relocatable by doing something like the following in Lua:

```lua
local config_path = vim.fn.stdpath("config") .. "/init.lua"
```

Custom Neovim configurations will be displayed and available in subsequent
runs of `lazyman` in the Lazyman Menu System.

An excellent list of preconfigured Neovim configurations is available at the
[Awesome Neovim Repository](https://github.com/rockerBOO/awesome-neovim#preconfigured-configuration). Many of these can be easily installed and initialized using
`lazyman -b <branch> -C <url> -N <nvimdir> ...`.

Feel free to open an issue at
<https://github.com/doctorfree/nvim-lazyman/issues> to help tackle any problems
installing or initializing Neovim configurations with Lazyman.

#### Custom configuration patches

If you encounter a Neovim configuration that does not cleanly initialize
with `lazyman` it is often possible to make a few minor changes to the
configuration to get it working. Lazyman supports custom configuration
patches that are applied during initialization of a configuration.

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

