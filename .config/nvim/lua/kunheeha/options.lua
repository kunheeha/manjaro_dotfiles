vim.opt.background = "dark"
vim.opt.fileencoding = "utf-8"		-- file encoding
vim.opt.backup = false			-- backup file
vim.opt.swapfile = false		-- swap file
vim.opt.writebackup = false
vim.opt.hlsearch = true			-- highlight all matches on previous search pattern
vim.opt.ignorecase = true		-- ignore case in search pattern
vim.opt.showtabline = 2			-- always show tabs
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.timeoutlen = 1000		-- time to wait for mapped sequence to complete (in milliseconds)
vim.opt.updatetime = 300		-- faster completion
vim.opt.undofile = true			-- persistent undo
vim.opt.expandtab = true		-- convert tabs to spaces
vim.opt.shiftwidth = 2			-- number of spaces for each indentation
vim.opt.tabstop = 2			-- insert 2 spaces for a tab
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4			-- number column width (default=4)
vim.opt.signcolumn = "yes"		-- show sign column
vim.opt.wrap = true			-- long line as one line
vim.opt.linebreak = true --avoid wrapping in middle of word
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.mouse = "a"			-- make vim clickable
vim.opt.clipboard = "unnamedplus"	-- system clipboard
vim.cmd([[hi! Normal ctermbg=None guibg=None]])
vim.cmd([[hi! NonText ctermbg=None guibg=None guifg=None ctermfg=None]])
-- Nord settings
vim.g.nord_disable_background = true
-- cursorline
vim.opt.cursorline = true
-- Floaterm settings
vim.cmd([[hi! Floaterm guibg=None]])
vim.cmd([[hi! FloatermBorder guibg=None]])

-- For Juno
vim.cmd( [[ set iskeyword=@,48-57,192-255]] )
