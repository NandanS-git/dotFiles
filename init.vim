let mapleader = "'"

call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'junegunn/goyo.vim'
Plug 'preservim/nerdtree'
Plug 'lervag/vimtex'

call plug#end()

" Colorscheme
let g:gruvbox_contrast_light = 'soft'
colorscheme gruvbox
set bg=light

" Goyo plugin makes text more readable for writing prose
map <leader>f :Goyo \| set linebreak<CR>

map <leader>n :NERDTreeToggle<CR>

" Font related
set guifont=DejaVu\ Sans\ Mono:h14

" Basics
set nocompatible
filetype plugin on
syntax on
set encoding=utf-8
set number
set relativenumber
set wildmode=longest,list,full	" Enables autocompletion
autocmd filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o	" Disable autocommenting on newline

set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set shiftwidth=4
set autoindent

" Vim window splitting
set splitbelow splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Fortran related
au BufRead,BufNewFile *.cuf set syntax=fortran
let fortran_have_tabs=1

" Enable Mouse
set mouse=a

" Right Click Context Menu (Copy-Cut-Paste)
nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
xnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
snoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv
