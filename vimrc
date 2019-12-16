set encoding=utf-8
set nu
set cursorline
set cursorcolumn
set colorcolumn=80
set nocompatible         
filetype off           

setlocal rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
call vundle#end()
filetype plugin indent on 


" Enable folding
setlocal foldmethod=indent
setlocal foldlevel=99

"Enable folding with the spacebar
nnoremap <space> za


"Spt navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


au BufNewFile, BufRead *.py
    \ setlocal tabstop=4	|
    \ setlocal softtabstop=4	|
    \ setlocal shiftwidth=4	|
    \ setlocal textwidth=79	|
    \ setlocal expandtab	|
    \ setlocal autoindent	|
    \ setlocal fileformat=unix	|

au BufNewFile, BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2


au BufRead, BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
Plugin 'vim-scripts/indentpython.vim'



"Emmet Plugin
Plugin 'mattn/emmet-vim'


Bundle 'Valloric/YouCompleteMe'



let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
