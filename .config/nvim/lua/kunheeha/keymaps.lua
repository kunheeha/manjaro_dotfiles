local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

-- Leader key
vim.g.mapleader = ",,"
vim.g.maplocalleader = ",,"

-- ESCAPE --
keymap("i", "ii", "<Esc>", opts)
keymap("v", "ii", "<Esc>", opts)

-- Normal Mode (n) --
-- Quit all
keymap("n", "<Leader>qa", ":qa<CR>", opts)
-- Write
keymap("n", "<Leader>w", ":w<CR>", opts)
-- New Tab
keymap("n", "<Leader>et", ":tabe<CR>", opts)
-- Close Tab
keymap("n", "<Leader>ct", ":tabc<CR>", opts)
-- Resize Window
keymap("n", "<Up>", ":resize +2<CR>", opts)
keymap("n", "<Down>", ":resize -2<CR>", opts)
keymap("n", "<Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<Right>", ":vertical resize +2<CR>", opts)
-- Relative numbers
keymap("n", "<Leader>nr", ":set invrnu<CR>", opts)
-- BUFFERS
-- Cycling though buffers
keymap("n", "<TAB>", ":bnext<CR>", opts)
keymap("n", "<S-TAB>", ":bprev<CR>", opts)
-- Kill buffers
keymap("n", "<Leader>bk", ":bdelete<CR>", opts)
-- NvimTreeToggle
keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
-- Floaterm
keymap("n", "<Leader>f", ":FloatermToggle", opts)
keymap("n", "<Leader>fn", ":FloatermNext<CR>", opts)
keymap("n", "<Leader>fp", ":FloatermPrev<CR>", opts)
keymap("n", "<Leader>fc", ":FloatermNew --name=", opts)
-- Easier navigation through wrapped line
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)
-- Remove all HighStr Highlight
keymap("n", "<Leader>rahl", ":<c-u>HSRmHighlight rm_all<CR>", opts)

-- Visual Mode (v) --
-- Better Tabbing
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
-- Keep yanked text in register after visual replace
keymap("v", "p", "_dP", opts)
-- HighStr
keymap("v", "<Leader>hl0", ":<c-u>HSHighlight 0<CR>", opts)
keymap("v", "<Leader>hl1", ":<c-u>HSHighlight 1<CR>", opts)
keymap("v", "<Leader>hl2", ":<c-u>HSHighlight 2<CR>", opts)
keymap("v", "<Leader>hl3", ":<c-u>HSHighlight 3<CR>", opts)
keymap("v", "<Leader>hl4", ":<c-u>HSHighlight 4<CR>", opts)
keymap("v", "<Leader>hl5", ":<c-u>HSHighlight 5<CR>", opts)
keymap("v", "<Leader>hl6", ":<c-u>HSHighlight 6<CR>", opts)
keymap("v", "<Leader>hl7", ":<c-u>HSHighlight 7<CR>", opts)
keymap("v", "<Leader>hl8", ":<c-u>HSHighlight 8<CR>", opts)
keymap("v", "<Leader>hl9", ":<c-u>HSHighlight 9<CR>", opts)
keymap("v", "<Leader>rhl", ":<c-u>HSRmHighlight<CR>", opts)


-- Visual Block Mode (x) --

-- Insert Mode (i) --

-- Term Mode (t) --
keymap("t", "<Esc>", "<C-\\><C-n>", opts)

-- Command Mode (c) --

-- Telescope
keymap("n", "<C-f>", "<cmd>Telescope find_files hidden=true<CR>", opts)
keymap("n", "<C-g>", "<cmd>Telescope live_grep hidden=true<CR>", opts)
keymap("n", "<C-b>", "<cmd>Telescope buffers<CR>", opts)
