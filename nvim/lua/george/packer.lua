-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'  -- Packer can manage itself
  use 'morhetz/gruvbox'         -- my favorite color scheme
  use 'tpope/vim-fugitive'      -- git integeration in vim
  use 'pangloss/vim-javascript' -- enable sticky scroll
  use 'wellle/context.vim'      -- sticky context scroll down
  -- conquerer of completion (autocomplete)
  use {'neoclide/coc.nvim', branch='release'}
  -- vim airline (base and theme) for status bar
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
end)
