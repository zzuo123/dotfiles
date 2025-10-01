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

-- user system clipboard for yank(y), delete(d), change(c), and put(p)
vim.opt.clipboard = "unnamedplus"

-- use true color (24-bit color) in the terminal instead of the old 256-color palette.
vim.opt.termguicolors = true
