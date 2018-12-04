execute pathogen#infect()

" *** display settings ***
:set ts=2
:set shiftwidth=2
:set ai
:set hlsearch
:set ruler
:set number
:syn on
:set encoding=utf8
:set guioptions-=T "disable toolbar
:set visualbell

" Colors
set t_Co=256
syntax on
colorscheme minimalist
hi Comment          ctermfg=238     ctermbg=NONE    cterm=NONE      guifg=#777777       guibg=NONE      gui=NONE

" Cursor column
:hi CursorColumn cterm=NONE ctermbg=lightgray ctermfg=black guibg=gray23 guifg=white
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
:set cursorcolumn

" Show trailing whitespace and spaces before a tab:
"   inspired by http://vim.wikia.com/wiki/Highlight_unwanted_spaces
"   nice color list: http://choorucode.com/2011/07/29/vim-chart-of-color-names/
:highlight ExtraWhitespace ctermbg=red guibg=DeepPink
:autocmd BufWinEnter * match ExtraWhitespace /\s\+$\| \+\ze\t/

" *** hotkeys ***
" trailing linebreak/space is intentional
:map  :tabnew
:map  :tabe 

" *** filetype-specific settings ***
au BufRead,BufNewFile *.yaml,*.yml set expandtab shiftwidth=2 softtabstop=2 tabstop=2
"au BufRead,BufNewFile *.py set expandtab shiftwidth=2 softtabstop=2 tabstop=2
au BufRead,BufNewFile *.py set copyindent shiftwidth=2 softtabstop=2 tabstop=2
au BufRead,BufNewFile *.json set noexpandtab
au BufRead,BufNewFile *.php set noexpandtab foldmethod=indent

" status line (more stuff added by syntastic below)
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2

" *** Syntastic settings ***
let g:syntastic_javascript_closurecompiler_script = "/usr/bin/closure-compiler"
let g:syntastic_javascript_checkers = ["closurecompiler"]
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
