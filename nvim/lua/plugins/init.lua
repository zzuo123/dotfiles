-- basic QOL stuff at the absolute minimum

return {
    "folke/which-key.nvim",
    {"ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
    {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"},
    {"nvim-mini/mini.pairs", version = false, config = function()
        require("mini.pairs").setup()
    end,},
    {"lewis6991/gitsigns.nvim", config = function()
        local gitsigns = require("gitsigns")
        gitsigns.setup({
            current_line_blame = true,
        })
    end,},
    "tpope/vim-fugitive",
}
