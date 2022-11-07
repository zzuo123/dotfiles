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
-- ctrl-n to toggle nerd tree 
map('n', '<C-n>', ':NERDTreeToggle<CR>')

-- Use K to show documentation in preview window.
function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end
map("n", "K", '<CMD>lua _G.show_docs()<CR>')
vim.cmd([[
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
]])
