local settings = require('configuration')
local utils = require('utils.functions')
local o = vim.opt
local fn = vim.fn

if settings.global_statusline then
  o.laststatus = 3
else
  o.laststatus = 2
end

if utils.isNotEmpty(settings.grepprg) then
  o.grepprg = settings.grepprg
end

o.autoindent = true         -- always set autoindenting on
o.backup = false            -- creates a backup file
o.clipboard = 'unnamedplus' -- keep in sync with the system clipboard
o.conceallevel = 0       -- so that `` is visible in markdown files
o.confirm = true         -- confirm to save changes before exiting modified buffer
o.cursorline = true      -- highlight the current line
o.dir = fn.stdpath('data') .. '/swp' -- swap file directory
o.expandtab = true                   -- use spaces instead of tabs
o.formatoptions = 'jcroqlnt'         -- tcqj
o.hidden = true                      -- Enable modified buffers in background
-- Use the 'history' option to set the number of remembered lines from command mode
o.history = 500
o.ignorecase = true         -- ignore case in search patterns
o.inccommand = 'nosplit'    -- preview incremental substitute
o.list = settings.list
o.listchars = settings.listchars
o.mouse = settings.mouse
o.number = settings.number
o.pumblend = 10  -- Popup blend
o.pumheight = 10 -- Maximum number of entries in a popup
o.relativenumber = settings.relative_number
o.scrolloff = 3 -- Minimal number of screen lines to keep above and below the cursor
-- o.sessionoptions = { 'buffers', 'curdir', 'tabpages', 'winsize' }
o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
o.shiftround = true -- Round indent
o.shiftwidth = 2    -- the number of spaces inserted for each indentation
o.shortmess = o.shortmess + 'c' -- prevent "pattern not found" messages
o.showmode = false -- we don't need to see things like -- INSERT -- anymore
o.showtabline = settings.showtabline
o.sidescrolloff = 5    -- The minimal number of columns to scroll horizontally
-- Always show the signcolumn, otherwise it would shift the text each time
o.signcolumn = 'yes'
o.smartcase = true     -- Don't ignore case with capitals
o.smartindent = true   -- Insert indents automatically
o.splitbelow = true    -- force all horizontal splits to go below current window
o.splitright = true    -- force all vertical splits to go to the right of current window
o.swapfile = true      -- enable/disable swap file creation
o.tabstop = 2          -- how many columns a tab counts for
o.softtabstop = 2
o.shiftwidth = 2       -- Default shift width for indents
o.expandtab = true     -- Replace tabs with ${tabstop} spaces
o.smarttab = true      --
o.termguicolors = true -- set term gui true colors (most terminals support this)
o.timeoutlen = 400 -- time to wait for a mapped sequence to complete (in milliseconds)
o.ttimeoutlen = 0  -- Time in milliseconds to wait for a key code sequence to complete
-- o.undodir = fn.stdpath('data') .. '/undodir' -- set undo directory
o.undofile = true  -- enable/disable undo file creation
o.undolevels = 1000
o.updatetime = 300          -- faster completion
o.wildignorecase = true     -- ignore case when completing file and directory names
-- o.wildmode = 'longest:full,full'
o.wildmode = 'longest,list' -- Command-line completion mode
o.winminwidth = 5           -- minimum window width
o.wildignore = [[
.git,.hg,.svn
*.aux,*.out,*.toc
*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
*.mp3,*.oga,*.ogg,*.wav,*.flac
*.eot,*.otf,*.ttf,*.woff
*.doc,*.pdf,*.cbr,*.cbz
*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
*.swp,.lock,.DS_Store,._*
*/tmp/*,*.so,*.swp,*.zip,**/node_modules/**,**/target/**,**.terraform/**
]]

o.backspace = {'indent', 'eol', 'start'}
o.ruler = true             -- Show the cursor position all the time
o.showcmd = true           -- Display an incomplete command in statusline
o.mousehide = true         -- Hide mouse after chars typed
o.encoding = 'utf-8'
o.pastetoggle = '<F10>'    -- Toggle between paste and normal
o.tags = '.git/tags;$HOME' -- Consider the repo tags first, then
o.modeline = true
o.modelines = 5            -- Default number of lines to read for modeline
o.autowrite = true         -- Writes on make/shell commands
o.autoread = true
o.directory = '/tmp//'     -- Prepend(^=) $HOME/.tmp/ to default path
o.incsearch = true         -- Show matches while typing
o.hlsearch = true          -- Highlight search
-- Insert the current comment leader after 'o' or 'O' in Normal mode.
o.fo = o.fo + 'o'
-- Do not automatically insert a comment leader after an enter
o.fo = o.fo - 'r'
-- Do no auto-wrap text using textwidth (does not apply to comments)
o.fo = o.fo - 't'
o.cindent = true
o.indentkeys = o.indentkeys - '0#'  -- Do not break indent on #
o.cinkeys = o.cinkeys - '0#'
o.cinoptions = ':s,ps,ts,cs'
o.cinwords = 'if,else,while,do,for,switch,case'
o.synmaxcol = 250           -- limit syntax highlighting to 250 columns
o.showmatch = true          -- Show matching brackets.
o.matchtime = 2             -- Bracket blinking.
o.foldenable = true         -- Turn on folding
o.foldmethod = 'marker'     -- Fold on the marker
o.foldlevel=100             -- Don't autofold anything (but still fold manually)
-- What movements open folds
o.foldopen = 'block,hor,tag,percent,mark,quickfix'
o.virtualedit = 'block'
o.exrc = true
o.background = 'dark'
