vim.wo.relativenumber = true
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- use treesitter for folding
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.o.foldlevel = 99
-- vim.o.foldlevelstart = 1
vim.keymap.set('n', '<Space>', 'za', { noremap = true, silent = true, desc = "Toggle fold" })
