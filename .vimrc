set nu
set tabstop=4
set shiftwidth=4
syntax on
set hlsearch

" 三步搞定中文乱码 
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8


" ============= 自定义快捷键 =============
let mapleader = ","

"Fast reloading of the .vimrc
map <silent> <leader>ss :source ~/.vimrc<cr>
"Fast editing of .vimrc
map <silent> <leader>ee :e ~/.vimrc<cr>
"When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc
"tag navication
map <silent> <leader>tn :tabnext<cr>
map <silent> <leader>tp :tabprevious<cr>





" =======================================================================================
" From: https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
" =======================================================================================

" split setting
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" code folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
let g:SimpylFold_docstring_preview=1


" =====================================================================
"								The Vundle
" =====================================================================
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
" Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" 配色方案
Plugin 'jnurmine/Zenburn'
Plugin 'tomasr/molokai'

" 缩进插件
"Plugin 'git://github.com/nathanaelkane/vim-indent-guides.git'
Plugin 'Yggdroot/indentLine' 		" 缩进虚线


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ============= NERDTree setting =============
" hiden the .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
" Open NERDTree
map <silent> <leader>no :NERDTree<cr>
" Close NERDTree
map <silent> <leader>nc :NERDTreeClose<cr>
" Toggle NERDTree
map <silent> <leader>nt :NERDTreeToggle<cr>
map <silent> <leader>nm :NERDTreeMirror<cr>


" ============= color schema =============
colorscheme ron
set background=dark
