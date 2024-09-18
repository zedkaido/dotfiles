local g = vim.g

g.have_nerd_font = false

local opt = vim.opt

-- opt.termguicolors = true
opt.background = "light"

opt.guicursor = "n-v-c-sm:block,i-ci-ve:block,r-cr-o:hor20"
opt.cursorline = false

opt.number = true
opt.relativenumber  = true
opt.signcolumn = "yes"

opt.tabstop = 3
opt.softtabstop = 3
opt.shiftwidth = 3
opt.expandtab = false

opt.mouse = "a"

opt.breakindent = true

opt.undofile = true

opt.wrap = false
opt.linebreak = false

opt.swapfile = false
opt.writebackup = true
opt.undofile = true

opt.hlsearch = true
opt.incsearch = true

opt.ignorecase = true
opt.smartcase = true

opt.updatetime = 250

opt.splitright = true
opt.splitbelow = true

opt.inccommand = "split"

opt.cursorline = false

opt.scrolloff = 10

-- Shada (AKA. "shared data")
-- Controls the bahvior of session data storage (history, marks, registers, ...) 
--   `'10` - remember marks from the last 10 files you have edited
--   `<0` - don't remember any command-line history
--   `s10` - store up to 10 KiB of search history
--   `h` - enables the saving of `'/'` and `':'` (search and command-line history)
opt.shada = { "'10", "<0", "s10", "h" }

-- Don't have `o` add a comment
opt.formatoptions:remove "o"

-- search down into folders
-- provides tab completion for all file-related tasks
opt.path:append "**"
opt.wildignore:remove(".*") -- hidden directories and files are fine to search
opt.wildignore:append "**/node_modules/**"
opt.wildignore:append "**/build/**"
opt.wildoptions = "pum,tagfile"
