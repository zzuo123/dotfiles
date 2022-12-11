-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'  -- Packer can manage itself
  use 'morhetz/gruvbox'         -- my favorite color scheme
  use 'tpope/vim-fugitive'      -- git integeration in vim
  use 'pangloss/vim-javascript' -- enable sticky scroll
  use 'wellle/context.vim'      -- sticky context scroll down
  use 'scrooloose/nerdtree'     -- file system explorer
  -- startup screen for nvim
  use { "mhinz/vim-startify" }
  -- conquerer of completion (autocomplete)
  use {'neoclide/coc.nvim', branch='release'}
  -- vim airline (base and theme) for status bar
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  -- visual guide for indentation
  use "lukas-reineke/indent-blankline.nvim"
  use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
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
