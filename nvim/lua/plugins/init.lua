-- basic QOL stuff at the absolute minimum

return {
  "folke/which-key.nvim",
  {"ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
  {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"},
  {'nvim-mini/mini.pairs', version = false},
}
