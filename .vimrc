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
Plugin 'taglist.vim'

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

" ============= Taglist setting =============
" Toggle Taglist
map <silent> <leader>tlt :TlistToggle<cr>
" Open Taglist
map <silent> <leader>tlo :TlistOpen<cr>
" Close Taglist
map <silent> <leader>tlc :TlistClose<cr>
let Tlist_WinWidth=40           " Set the window 41 cols wide.
let Tlist_Close_On_Select=0     " Close the list when a item is selected
let Tlist_Use_SingleClick=1     "Go To Target By SingleClick
let Tlist_Show_One_File = 1     "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1   "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1  "在右侧窗口中显示taglist窗口

" ============= color schema =============
colorscheme ron
set background=dark
