-- remap local set variable to vim.opt
local set = vim.opt
-- function to set global variable
local function g(k, v)
    vim.api.nvim_set_var(k, v)
end

set.guicursor = ""
set.errorbells = false  -- no dingdong bell when error
-- good old tab vs space setting
set.tabstop = 4         -- 4 spaces on tab-byte
set.softtabstop = 4     -- 4 spaces on tab press
set.shiftwidth = 4      -- every >> results in 4 spaces in front of line
set.expandtab = true    -- make tab insert spaces instead of tabs (good practice)
-- good old relative line number setting
set.nu = true
set.relativenumber = true
-- case insensitive while searching for text
set.ignorecase = true   -- ignore case
set.smartcase = true    -- smart case
set.incsearch = true    -- show intermediate search result when typing
set.hlsearch = true     -- highlight all instances
-- enable folding
set.foldmethod = "indent"
set.foldlevel = 99
-- other misceleneous setting
set.wrap = true     -- I love text wrap
set.cursorline = true
-- highlight spaces and tabs
-- set.listchars="eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣"
set.listchars="tab:>·"
set.list = true


-- vim airline settings (fallback in case powerline font not exist)
g("airline_powerline_fonts", 1)
g("airline#extensions#tabline#enabled", 1)
g("airline#extensions#tabline#left_sep", " ")
g("airline#extensions#tabline#left_alt_sep", "|")
g("airline#extensions#tabline#right_sep", " ")
g("airline#extensions#tabline#right_alt_sep", "|")
g("airline#extensions#tabline#formatter", "unique_tail_improved")
g("airline_left_sep", "»")
g("airline_left_sep", "▶")
g("airline_right_sep", "«")
g("airline_right_sep", "◀")
-- I am really too lazy to convert this to lua
vim.cmd([[
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
]])
