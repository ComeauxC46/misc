"Name: .vimrc
"Author: Chris Comeaux
"Date: 6/12/2017

"let g:pathogen_disabled = ['syntastic-master' , 'CCTree-master' , 'gundo.vim-master', 'vim-indent-guides-master', 'vim-airline-master', 'vim-cmake-syntax-master',  'nerdtree-master', 'vim-easymotion-master']
execute pathogen#infect()

"========================================================================
" => Mouse Settings 
"========================================================================
""""""""""""""""""""""""""""""""""""""
"let wheel scroll file contents
""""""""""""""""""""""""""""""""""""""
"if !has("gui_running")
"        set term=xterm
"            set mouse=a
"                " perhaps `nocompatible` is not required
"                    set nocompatible
"endif
set mouse=a
"set term=xterm
"========================================================================
" => Line Numbers 
"========================================================================
set nu

"========================================================================
" => Color Scheme 
"========================================================================
syntax enable
colorscheme delek
hi LineNr ctermfg=black
hi Comment cterm=bold ctermfg=darkgreen
hi Type term=underline ctermfg=lightblue 
hi Constant ctermfg=red
se cursorline
hi clear cursorline
hi CursorLineNr cterm=bold ctermfg=yellow
hi Directory ctermfg=blue

"========================================================================
" => Tabs 
"========================================================================
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set cindent
"set fileformat=unix
filetype indent on

"========================================================================
" => Double Click Select 
"========================================================================
:noremap <2-LeftMouse> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
:inoremap <2-LeftMouse> <esc>:let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

"========================================================================
" => Appearance settings
"========================================================================
set laststatus=2
"set visualbell
set cmdheight=1


"========================================================================
" => Title 
"========================================================================
set title
auto BufEnter * let &titlestring = "vim " . expand("%:.") . "  \(" . $USER . "@" . $HOST . ":" . getcwd() . "\)"
let &titleold = $USER . "@" . $HOST . ":" . getcwd()
