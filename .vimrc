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

:hi CursorColumn cterm=NONE ctermbg=lightgray ctermfg=black guibg=cornsilk guifg=black
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
au BufRead,BufNewFile *.php set foldmethod=indent

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
