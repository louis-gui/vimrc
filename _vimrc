""""""""""""""""""""""""
"         Plug         "
""""""""""""""""""""""""
" https://github.com/junegunn/vim-plug
" :PlugUpgrade to upgrade vim-plug itself
" :PlugInstall to install
" :PlugInstall! to force reinstall
" :PlugUpdate to update
call plug#begin('~/.vim/plugged')

" Multi cursor
Plug 'terryma/vim-multiple-cursors'
" Colorscheme
Plug 'tomasr/molokai'
" Find and replace
Plug 'dyng/ctrlsf.vim'
" CtrlP Go to file
Plug 'kien/ctrlp.vim'
" Close pairs ( ) { }
Plug 'Raimondi/delimitMate'
" Smart comment
" [count]<leader> cc cn c<space> cm ci cs cy c$ cA cl cb cu
Plug 'scrooloose/nerdcommenter'
" Auto completion
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer'}  " Put .ycm_extra_conf.py in any folder above you file

call plug#end()


""""""""""""""""""""""""
"     vim Settings     "
""""""""""""""""""""""""
syntax on
set nocp nobackup nowritebackup
set noswapfile noundofile
set backspace=indent,eol,start  " more powerful backspacing
set number
set tabstop=4
set shiftwidth=4

colo molokai


""""""""""""""""""""""""
"     Key Mapping      "
""""""""""""""""""""""""
let mapleader = ","
" window maps
nmap <leader>h <C-W>h
nmap <leader>j <C-W>j
nmap <leader>k <C-W>k
nmap <leader>l <C-W>l
" save map
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>wq :wq<CR>
" NETRW
nnoremap <leader>e :Explore<CR>
nmap <leader>g :CtrlPMixed<CR>


""""""""""""""""""""""""
"   Plugins Settings   "
""""""""""""""""""""""""
" delimitMate
let delimitMate_expand_cr = 1

" YCM
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion= 1
nnoremap <leader>r :YcmCompleter GoTo<CR>
nnoremap gd :YcmCompleter GoTo<CR>

" CtrlSF
"Find selected word
vmap <leader>f <Plug>CtrlSFVwordExec
"Find word in cursor
"nmap <leader>f <Plug>CtrlSFCwordPath
"Find word in cursor with boundary
nmap <leader>f <Plug>CtrlSFCCwordPath<CR>
