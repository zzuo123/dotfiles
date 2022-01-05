syntax on   "turns on syntax highlighting

set noerrorbells    "no dingdong bell when error
set tabstop=2 softtabstop=2   "2 spaces on tab-byte and 2 spaces on tab press
set shiftwidth=2    "every >> results in 2 spaces in front of line
set expandtab   "make tab insert spaces instead of tabs
set smartindent autoindent  "react to the style of code while applying current line indentation to next line
set number relativenumber   "turns on hybrid line number (nu+rnu)
set ignorecase smartcase   "case insensitive when searching with all lower case
set incsearch   "show intermediate search results while typeing
set nohlsearch  "no text highlight after monving on from search
set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)

highlight LineNr ctermfg=8F989E 

nnoremap q <c-v>
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" tab navigations
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :tabm -1<CR>
nnoremap <silent> <A-Right> :tabm +1<CR>
" view the specified file in a new tab (read-only)
cabbrev tabv tab sview +setlocal\ nomodifiable

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

" this allows folds and cursor position to persist after file close
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

" open a terminal window in current Window
command Eterm :term ++curwin
" open a explorer window in current window
command E :Explore

" put swap, backup and undo files in specialized directory
if !isdirectory("~/.vim/tmp/")
  call mkdir($HOME . "/.vim/tmp/", "p")
  call mkdir($HOME . "/.vim/tmp/backup/", "p")
  call mkdir($HOME . "/.vim/tmp/swap/", "p")
  call mkdir($HOME . "/.vim/tmp/undo/", "p")
endif
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//
set undodir=~/.vim/tmp/undo//

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif

" ------------ PLUGIN AREA --------------------------------{{
if !empty(glob("~/.vim/autoload/plug.vim"))
  " because I don't want YouCompleteMe on all machine, it check if the file is
  " empty then decide if it should install ycm and remap keys.
  let g:installycm = !empty(glob("~/.vim/installycm"))

  " vim plugins
  call plug#begin()
  Plug 'vim-airline/vim-airline'  " cool styling for vim
  Plug 'morhetz/gruvbox'          " cool color pallet for vim
  Plug 'tpope/vim-fugitive'       " git integration in vim

  " javascript and jsx (for react) syntax highlighting
  Plug 'pangloss/vim-javascript'
  Plug 'maxmellon/vim-jsx-pretty'

  if installycm
    Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
  endif
  call plug#end()
  
  if installycm
    " ycm remap
    nnoremap <C-y><C-g> :YcmCompleter GoTo
    nnoremap <C-y><C-d> :YcmCompleter GetDoc
    nnoremap <C-y><C-n> :YcmCompleter RefactorRename
    nnoremap <C-y><C-f> :YcmCompleter FixIt
  endif 
    
  " gruvbox colorscheme setting
  set bg=dark
  autocmd vimenter * ++nested colorscheme gruvbox
  
  " vim airline setting
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline#extensions#tabline#right_sep= ' '
  let g:airline#extensions#tabline#right_alt_sep = '|'
  let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
endif  
