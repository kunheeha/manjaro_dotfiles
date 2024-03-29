local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
-- Nord Theme
Plug 'shaunsingh/nord.nvim'
-- Catppuccin Theme
Plug('catppuccin/nvim', {['as'] = 'catppuccin'})
-- Everblush Theme
Plug('Everblush/everblush.nvim', {['as'] = 'everblush'})
-- LSP
Plug 'neovim/nvim-lspconfig' -- LSP
Plug 'williamboman/nvim-lsp-installer' --LSP installer
-- cmp
Plug 'hrsh7th/nvim-cmp' --cmp plugin itself
Plug 'hrsh7th/cmp-nvim-lsp' -- LSP for cmp
Plug 'hrsh7th/cmp-buffer' -- buffer cmp
Plug 'hrsh7th/cmp-path' -- path cmp
Plug 'hrsh7th/cmp-cmdline' --cmdline cmp
-- Snippets
-- Luasnip
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
-- Vimsnip
Plug 'hrsh7th/cmp-vsnip' -- cmp for snippets
Plug 'hrsh7th/vim-vsnip'
-- Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'
-- Telescope
Plug 'nvim-telescope/telescope.nvim'
Plug('nvim-telescope/telescope-fzf-native.nvim', {['do'] = 'make'}) -- fzf telescope plugin
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim' -- filebrowser telescope plugin
-- Treesitter
Plug('nvim-treesitter/nvim-treesitter', {['do'] = 'TSUpdate'})
Plug 'nvim-treesitter/playground'
-- Comments
Plug 'numToStr/Comment.nvim'
Plug 'JoosepAlviste/nvim-ts-context-commentstring' --jsx commenting depending on context
-- Lualine
Plug 'nvim-lualine/lualine.nvim'
-- WebDevIcons
Plug 'kyazdani42/nvim-web-devicons'
-- NvimTree
Plug 'kyazdani42/nvim-tree.lua'
-- Colorizer
Plug 'norcalli/nvim-colorizer.lua'
-- Wiki
Plug 'vimwiki/vimwiki'
-- Smoothscroll
Plug 'karb94/neoscroll.nvim'
-- Floaterm
Plug 'voldikss/vim-floaterm'
-- Git
Plug 'tpope/vim-fugitive'
-- GitSigns
Plug 'lewis6991/gitsigns.nvim'
-- VisIncr
Plug 'vim-scripts/VisIncr'
-- HighStr
Plug 'Pocco81/HighStr.nvim'
-- Sneak
Plug 'justinmk/vim-sneak'
-- Startify
Plug 'mhinz/vim-startify'
-- Colourschemes
Plug 'rktjmp/lush.nvim'
-- Indent Blankline
Plug 'lukas-reineke/indent-blankline.nvim'


vim.call('plug#end')
