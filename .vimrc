" VIM configuration - Cédric ROCHART
call pathogen#infect() 			" activate pathogen

" autocmd vimenter * NERDTree 		" activate nerdTree

set nocompatible 			" skip compatibility mode

set title 				" update title of window
set number 				" show line number
set ruler				" show cursor position
set wrap 				" cut long line on new line
set scrolloff=3 			" show 3 lines arround cursor

set ignorecase 				" ignore case on search mode
set smartcase 				" if search contain upper case
					" case is activate
set incsearch 				" highlight word during tape
set hlsearch 				" highlight result of search

set visualbell 				" skip beep
set noerrorbells 			" skip beep

set backspace=indent,eol,start 		" activate usual mode for backspace

set hidden 				" hidden file if other is open

syntax enable 				" enable syntax color

" enable specific element depending type file
filetype on
filetype plugin on
filetype indent on 

" use dark Solarized theme
set background=dark
colorscheme solarized

" define font style
set guifont=DejaVu\ Sans\ Mono\ 10
set antialias

" disable directional key
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" define keybinding default mode
:imap ;; <Esc>

" define leader key
let mapleader = ","




" default parameter for ack
let g:ackprg="ack -H --nocolor --nogroup --column"

" place marker and search
nmap <leader>j mA:Ack<space>

" place marker and search word under cursor
nmap <leader>ja mA:Ack "<C-r>=expand("<cword>")<cr>"
nmap <leader>jA mA:Ack "<C-r>=expand("<cWORD>")<cr>"


" keybind call ctrlp
let g:ctrlp_map = '<leader>c'
