-- legacy vim commands that I cannot replace live here now

-- if I am running nvim in wsl, yank to windows clipboard as well
vim.cmd([[
" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
]])

-- allows folds and cursor position to persist after file closes
vim.cmd([[
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END
]])

-- enable prettier by setting Format command
vim.cmd([[
command! -nargs=0 Format :CocCommand prettier.forceFormatDocument
]])

-- use intuitive control for pop up menu
vim.cmd([[
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr><Enter> pumvisible() ? "\<C-y>" : "\<Enter>"
]])

