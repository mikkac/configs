" VIM Configuration File
"
"
" Description: Optimized for C/C++ development
" Author: Mikolaj Kaczmarek

if has("gui_win32")
    set guifont=Consolas:h14
endif

set background=dark
colorscheme radicalgoodspeed 
" additional plugins

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on

Plugin 'octol/vim-cpp-enhanced-highlight' " highlighting code 
Plugin 'idbrii/vim-unreal'
"Plugin 'Valloric/YouCompleteMe' " code completion
    " allow semantic support for C-family languages:
    " $ cd ~/.vim/bundle/YouCompleteMe && ./install.py --clang-completer
Plugin 'Rip-Rip/clang_complete'
Plugin 'scrooloose/nerdtree' " directory tree
Plugin 'Xuyuanp/nerdtree-git-plugin' " nerdtree git addition
Plugin 'scrooloose/nerdcommenter' " comment tool ',cc' to comment; ',cu' uncomment block of code
Plugin 'terryma/vim-multiple-cursors' " C-n -> add cursor, A-n -> add cursor on all instances; c- change text, I- insert at start of range, A- insert at end of range
Plugin 'mhinz/vim-grepper' " as name says - tool for grepping im vim
Plugin 'itchyny/lightline.vim' " fancy statusline (NORMAL/INSERT etc)
Plugin 'tpope/vim-surround' "  wrap selected region in brackets
Plugin 'airblade/vim-gitgutter' " indicating which lines changed in the file since last Git revision
Plugin 'flazz/vim-colorschemes' " pack with schemes

"scrooloose/nerdtree ++++++++++++++++++++++++++++++++++++++++++++++++
autocmd vimenter * NERDTree " starts NERDTree on vim start up

autocmd StdinReadPre * let s:std_in=1 " starts NERDTree even if no file is opened with current directory tree
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" shortcut to open NERDTree (Ctrl+o)
map <C-o> :NERDTreeToggle<CR>
 
" Valloric/YouCompleteMe ++++++++++++++++++++++++++++++++++++++++++++
"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"
" Rip-Rip/clang_complete ++++++++++++++++++++++++++++++++++++++++++++
let g:clang_library_path = '/usr/lib/llvm-6.0/lib/libclang-6.0.so.1'

"octol/vim-cpp-enhanced-highlight +++++++++++++++++++++++++++++++++++
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1

"scrooloose/nerdcommenter +++++++++++++++++++++++++++++++++++++++++++
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 10
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" itchyny/lightline.vim ++++++++++++++++++++++++++++++++++++++++++++
let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }

" Editor settings +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" disable vi compatibility (emulation of old bugs)
set nocompatible

" use indentation of previous line
set autoindent

" use intelligent indentation for C
set smartindent

" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces

" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120

" turn syntax highlighting on
set t_Co=256
syntax on
syntax enable

" turn line numbers on
set number

" highlight matching braces
set showmatch

" Install OmniCppComplete like described on http://vim.wikia.com/wiki/C++_code_completion
" This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
" Load standard tag files
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4

" Enhanced keyboard mappings ++++++++++++++++++++++++++++++++++++++++++++++++++++++++

" change leader key
let mapleader = ","

" in normal mode F2 will save the file
nmap <F2> :w<CR>

" in insert mode F2 will exit insert, save, enters insert again
imap <F2> <ESC>:w<CR>i

"Buffers"
    "Create a new buffer"
nnoremap <C-n> :enew<CR>\t
    "Moving around"
nnoremap <F7> :bprevious<CR>
nnoremap <F8> :bnext<CR>
    "Close Buffer"
nnoremap <F9> :bd<CR>

"Delete all trailing whitespaces
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

"Moving line"
    "With arrows"
nnoremap <S-Up> :m -2<CR>
nnoremap <S-Down> :m +1<CR>
inoremap <S-Up> <Esc>:m -2<CR><A>
inoremap <S-Down> <Esc>:m +1<CR><A>
    "With J and K in a normal mode"
nnoremap <S-j> :m +1<CR>
nnoremap <S-k> :m -2<CR>

"Insert new line in a normal mode"
nmap <CR> o<Esc>

" open .vimrc
nnoremap <leader>ev :split $MYVIMRC<CR>
" reload .vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>
