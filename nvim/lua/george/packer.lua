-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'  -- Packer can manage itself
  use 'morhetz/gruvbox'         -- my favorite color scheme
  use 'tpope/vim-fugitive'      -- git integeration in vim
  use 'pangloss/vim-javascript' -- enable sticky scroll
  use 'rust-lang/rust.vim'      -- rust syntax highlighting
  use 'wellle/context.vim'      -- sticky context scroll down
  -- file system explorer (nvim tree instead of nerdtree)
  use {'kyazdani42/nvim-web-devicons'}
  use {'nvim-tree/nvim-tree.lua'}
  -- startup screen for nvim
  use { "mhinz/vim-startify" }
  -- github copilot
  use { "github/copilot.vim" }
  -- conquerer of completion (autocomplete)
  use {'neoclide/coc.nvim', branch='release'}
  -- vim airline (base and theme) for status bar
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  -- vim comment support
  use { 'numToStr/Comment.nvim' }
  -- visual guide for indentation
  use "lukas-reineke/indent-blankline.nvim"
  use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
  }
  -- use telescope for fuzzy finding
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    "danymat/neogen",
    config = function()
        require('neogen').setup {}
    end,
    requires = "nvim-treesitter/nvim-treesitter",
    -- Uncomment next line if you want to follow only stable versions
    -- tag = "*"
  }
end)

