:set ts=2
:set shiftwidth=2
:set ai
:set hlsearch
:set ruler
:set number
:syn on
:set encoding=utf8
:set guioptions-=T
:map  :tabnew
:map  :tabe 
au BufRead,BufNewFile *.yaml,*.yml set expandtab shiftwidth=2 softtabstop=2 tabstop=2
:set vb

:hi CursorColumn cterm=NONE ctermbg=lightgray ctermfg=black guibg=lightgray guifg=black
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
:set cursorcolumn
