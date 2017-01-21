set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'Raimondi/delimitMate'

Plugin 'marijnh/tern_for_vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/promptline.vim'

Plugin 'crusoexia/vim-monokai'

Plugin 'davidhalter/jedi-vim'

Plugin 'ervandew/supertab'

Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



"vim-airline
" enable vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme='tomorrow'
" set status line
set laststatus=2

" enable powerline-fonts
let g:airline_powerline_fonts = 1

" enable tabline
let g:airline#extensions#tabline#enabled = 1

" set left separator
let g:airline#extensions#tabline#left_sep = ' '

" set left separator which are not editting
let g:airline#extensions#tabline#left_alt_sep = '|'

" show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0 
let g:ycm_python_binary_path = '/usr/bin/python3'

let g:jedi#use_tabs_not_buffers = 1
let g:jedi#completions_enabled = 0
" NERDTree
" au VimEnter *  NERDTree
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

" Backspace 修復
set nocompatible
set backspace=2

"程式碼高亮
syntax on

" 自動縮排：啟用自動縮排以後，在貼上剪貼簿的資料時排版可能會亂掉，這時可以手動切換至貼上模式 :set paste 再進行貼上。
set ai

" 啟用暗色背景模式。
set background=dark

" 啟用行游標提示。
" set cursorline

" 文字編碼加入 utf8。
set enc=utf8

" 標記關鍵字。
set hls

" 只在 Normal 以及 Visual 模式使用滑鼠，也就是取消 Insert 模式的滑鼠，
set mouse=nv

" 顯示行號。
set number



" 搜尋不分大小寫。
set ic

" 使用空白取到 Tab。
set expandtab

" 自訂縮排 (Tab) 位元數。
set tabstop=4
set shiftwidth=4

" 字數過長時換行。
set wrap
"set nowrap     " 不換行。

" 關閉嗶嗶聲。
set noeb

" 自動切換當前目錄。
set autochdir

" 捲動時保留底下 3 行。
set scrolloff=3


" 在 fish 裡相容 Vim 裡的 Neobundle。
set shell=/bin/bash

" 高亮當前行 (水平)。
set cursorline

" 高亮當前列 (垂直)。
set cursorcolumn

" :E 修正
cabbrev E Explore


" C/C++ 快速執行
map <F8> :w <CR> :!g++ % -o %.out && ./%.out <CR>

" Python3 快速執行
map <F5> :w <CR> :!python3 % <CR>
au BufNewFile,BufRead *.php set filetype=php

colorscheme monokai
set t_Co=256  " vim-monokai now only support 256 colours in terminal."
