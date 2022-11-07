local function map(m, k, v) -- map <mode, key, value>
    vim.keymap.set(m, k, v, {silent = true})
end

-- split navigations (no need for <C-W>)
map('n', '<C-J>', '<C-W><C-J>')
map('n', '<C-K>', ' <C-W><C-K>')
map('n', '<C-L>', '<C-W><C-L>')
map('n', '<C-H>', '<C-W><C-H>')
-- tab navigations
map('n', '<C-Left>', ':tabprevious<CR>')
map('n', '<C-Right>', ':tabnext<CR>')
map('n', '<A-Left>', ':tabm -1<CR>')
map('n', '<A-Right>', ':tabm +1<CR>')
-- <Control-l> redraws the screen and removes any search highlighting.
map('n', '<C-l>', ':nohl<CR><C-l>')
-- enable folding with the spacebar
map('n', '<space>', 'za')
