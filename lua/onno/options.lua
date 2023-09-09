local settings = require("configuration")
local utils = require("util")
local o = vim.opt

if settings.enable_statusline then
  o.showmode = false -- Dont show mode since we have a statusline
  o.ruler = true
  o.showcmd = true
  if settings.global_statusline then
    o.laststatus = 2
  else
    o.laststatus = 1
  end
else
  o.showmode = true -- Dont show mode since we have a statusline
  o.ruler = false
  o.showcmd = false
  o.laststatus = 0
end
o.showtabline = settings.showtabline

if utils.isNotEmpty(settings.grepprg) then
  o.grepprg = settings.grepprg
else
  o.grepprg = "rg --vimgrep"
end
o.list = settings.list -- Show some invisible characters (tabs...
o.listchars = settings.listchars
o.mouse = settings.mouse
o.number = settings.number
o.relativenumber = settings.relative_number

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = settings.mapleader
vim.g.maplocalleader = settings.maplocalleader
-- Register the 'text' filetype with Treesitter to be highlighted like markdown
vim.treesitter.language.register("markdown", "text")

o.autowrite = true      -- Enable auto write
o.clipboard = "unnamed" -- or "unnamedplus"
o.completeopt = "menu,menuone,noselect"
-- o.conceallevel = 3 -- Hide * markup for bold and italic
o.conceallevel = 0           -- so that `` is visible in markdown files
o.cmdheight = 0              -- more space in the neovim command line for displaying messages
o.fileencoding = "utf-8"     -- the encoding written to a file
o.incsearch = true
o.hlsearch = true            -- highlight all matches on previous search pattern
o.confirm = true             -- Confirm to save changes before exiting modified buffer
o.cursorline = true          -- Enable highlighting of the current line
o.expandtab = true           -- Use spaces instead of tabs
o.formatoptions = "jcroqlnt" -- tcqj
o.grepformat = "%f:%l:%c:%m"
o.ignorecase = true          -- Ignore case
o.inccommand = "nosplit"     -- preview incremental substitute
-- Fold options
o.foldcolumn = "0"
o.foldlevel = 49
o.foldlevelstart = 49
o.foldenable = true
o.fillchars:append("stl: ")
o.fillchars:append("eob: ")
o.fillchars:append("fold: ")
o.fillchars:append("foldopen:")
o.fillchars:append("foldsep: ")
o.fillchars:append("foldclose:")
o.fillchars:append("diff:╱")
o.pumblend = 10     -- Popup blend
o.pumheight = 10    -- Maximum number of entries in a popup
o.scrolloff = 4     -- Lines of context
o.sidescrolloff = 8 -- Columns of context
o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,globals,winsize,winpos,terminal"
o.shiftround = true -- Round indent
o.shiftwidth = 2    -- the number of spaces inserted for each indentation
o.tabstop = 2       -- how many spaces a tab counts for
o.softtabstop = 2
o.shortmess:append({ W = true, I = true, c = true })
o.signcolumn = "yes"   -- Always show the signcolumn, otherwise it would shift the text
o.smartcase = true     -- Don't ignore case with capitals
o.smartindent = true   -- Insert indents automatically
o.spelllang = { "en" }
o.spell = false        -- disable by default, enable in ftplugin or autocmd
o.spelloptions = { "noplainbuffer" }
o.splitbelow = true    -- Put new windows below current
o.splitright = true    -- Put new windows right of current
o.termguicolors = true -- True color support
o.timeoutlen = 300
o.ttimeoutlen = 0      -- Time in milliseconds to wait for a key code sequence to complete
o.undofile = true
o.undolevels = 10000
o.updatetime = 200               -- Save swap file and trigger CursorHold
-- o.updatetime = 500, -- faster completion (4000ms default)
o.wildmode = "longest:full,full" -- Command-line completion mode
o.winminwidth = 5                -- Minimum window width
o.wrap = true                    -- Enable line wrap

if vim.fn.has("nvim-0.9.0") == 1 then
  o.splitkeep = "screen"
  o.shortmess:append({ C = true })
end

o.backup = false
o.swapfile = false
o.writebackup = false
o.numberwidth = 4
o.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
o.background = "dark"
o.selection = "exclusive"
o.virtualedit = "onemore"
o.title = true
o.titlestring = "%<%F%=%l/%L - nvim"
o.linespace = 8
o.mousemoveevent = true
o.syntax = "off"

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0

-- Ignore some deprecation warnings
require("deprecation-warnings")

vim.opt.viewoptions:remove("curdir") -- disable saving current directory with views

vim.cmd("set whichwrap+=<,>,[,]")
vim.cmd([[set iskeyword+=-]])
-- diable open fold with `l`
vim.cmd([[set foldopen-=hor]])

if vim.g.neovide then
  vim.opt.guifont = "Cascadia Code:h10" -- the font used in graphical neovim applications
  vim.g.neovide_scale_factor = 1
end

-- The Homebrew installation location
local brew_prefix = os.getenv("HOMEBREW_PREFIX")
local utils = require("util")

if brew_prefix ~= nil then
  if utils.isdir("/home/linuxbrew/.linuxbrew") then
    vim.g.homebrew_install_dir = "/home/linuxbrew/.linuxbrew"
  else
    if utils.isdir("/opt/homebrew") then
      vim.g.homebrew_install_dir = "/opt/homebrew"
    else
      if utils.isdir("/usr/local") then
        vim.g.homebrew_install_dir = "/usr/local"
      else
        vim.g.homebrew_install_dir = ""
      end
    end
  end
else
  vim.g.homebrew_install_dir = brew_prefix
end

local python_path = vim.fn.exepath("python3")
if python_path == nil or python_path == "" then
  python_path = vim.g.homebrew_install_dir .. "/bin/python3"
  if utils.file_or_dir_exists(python_path) then
    vim.g.python3_host_prog = python_path
  end
else
  vim.g.python3_host_prog = python_path
end

-- First check rubygems user dir then system dir
local ruby_path = ""
if vim.fn.executable("ruby") == 1 then
  ruby_path = vim.fn.system({ "ruby", "-e", "puts Gem.user_dir" })
  if ruby_path == nil or ruby_path == "" then
    ruby_path = vim.fn.system({ "ruby", "-e", "puts Gem.dir" })
    if ruby_path == nil or ruby_path == "" then
      ruby_path = vim.g.homebrew_install_dir .. "/bin/ruby"
      if utils.file_or_dir_exists(ruby_path) then
        ruby_path = vim.fn.system({ ruby_path, "-e", "puts Gem.user_dir" })
        if ruby_path == nil or ruby_path == "" then
          ruby_path = vim.fn.system({ ruby_path, "-e", "puts Gem.dir" })
          if not (ruby_path == nil or ruby_path == "") then
            ruby_path = ruby_path:gsub("[%c]", "") .. "/bin/neovim-ruby-host"
            if utils.file_or_dir_exists(ruby_path) then
              vim.g.ruby_host_prog = ruby_path
            end
          end
        else
          ruby_path = ruby_path:gsub("[%c]", "") .. "/bin/neovim-ruby-host"
          if utils.file_or_dir_exists(ruby_path) then
            vim.g.ruby_host_prog = ruby_path
          end
        end
      end
    else
      ruby_path = ruby_path:gsub("[%c]", "") .. "/bin/neovim-ruby-host"
      if utils.file_or_dir_exists(ruby_path) then
        vim.g.ruby_host_prog = ruby_path
      end
    end
  else
    ruby_path = ruby_path:gsub("[%c]", "") .. "/bin/neovim-ruby-host"
    if utils.file_or_dir_exists(ruby_path) then
      vim.g.ruby_host_prog = ruby_path
    end
  end
end

local doq_path = vim.fn.exepath("doq")
if doq_path == nil or doq_path == "" then
  doq_path = vim.g.homebrew_install_dir .. "/bin/doq"
  if utils.file_or_dir_exists(doq_path) then
    vim.g.pydocstring_doq_path = doq_path
  else
    vim.g.pydocstring_doq_path = "/usr/bin/doq"
  end
else
  vim.g.pydocstring_doq_path = doq_path
end

require("config.lsp.functions")
