-- >>>>> Vim Pluggins <<<<<

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/autoload/plugged')
Plug('ellisonleao/gruvbox.nvim')
Plug('preservim/nerdtree')
Plug('Xuyuanp/nerdtree-git-plugin')
Plug('ryanoasis/vim-devicons')
Plug('tiagofumo/vim-nerdtree-syntax-highlight')
Plug('neovim/nvim-lspconfig')
Plug('williamboman/nvim-lsp-installer')
Plug('nvim-treesitter/nvim-treesitter')
Plug('alvan/vim-closetag')
-- Plug('jiangmiao/auto-pairs')
Plug('tpope/vim-surround')

-- stuff for autocomplete/tree sitter/lsp
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-vsnip')
Plug('hrsh7th/vim-vsnip')
Plug('saadparwaiz1/cmp_luasnip') -- Snippets source for nvim-cmp
Plug('L3MON4D3/LuaSnip') -- Snippets plugink

Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')
Plug('tpope/vim-commentary')
Plug('itchyny/lightline.vim')

-- markdown
-- Plug('ellisonleao/glow.nvim')
-- Plug('iamcco/markdown-preview.nvim')

-- indent
Plug('lukas-reineke/indent-blankline.nvim')

-- git
-- Plug('airblade/vim-gitgutter')

-- show in status bar
Plug('itchyny/vim-gitbranch')

vim.call('plug#end')

