" VIM Configuration File
" Description: Optimized for C/C++ development, but useful also for other things.
" Author: Gerhard Gappmeier
"
" additional plugins


set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on

Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'lifepillar/vim-mucomplete'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Shougo/denite.nvim'
"Plugin 'Shuogo/vimfiler.vim'
"Plugin 'mhinz/vim-stratify'
"Plugin 'thnica/vim-ref'
"Plugin 'mhinz/vim-grepper'
Plugin 'nvie/vim-togglemouse'

"nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd vimenter * NERDTree
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <F3> :NERDTreeToggle<CR>
"cpp highlighter
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
"nerdcommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 10
"
" " Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" " Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" " Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
"
" " Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" " Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" mucomplete
set completeopt+=menuone
set completeopt+=noselect
set completeopt+=noinsert
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion
let g:mucomplete#enable_auto_at_startup = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler = "clang++"
let g:syntastic_cpp_compiler_options = "-Werror -pedantic -Wall -std=c++1z"

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
colorscheme atomified 
" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" Install OmniCppComplete like described on http://vim.wikia.com/wiki/C++_code_completion
" This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
" Load standard tag files
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4

" Install DoxygenToolkit from http://www.vim.org/scripts/script.php?script_id=987
let g:DoxygenToolkit_authorName="Mikolaj Kaczmarek <mikolaj.kaczmarek@tieto.com>"

" Enhanced keyboard mappings
"
" in normal mode F2 will save the file
nmap <F2> :w<CR>
" in insert mode F2 will exit insert, save, enters insert again
imap <F2> <ESC>:w<CR>i
" switch between header/source with F4
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
" recreate tags file with F5
map <F5> :!ctags -R –c++-kinds=+p –fields=+iaS –extra=+q .<CR>
" create doxygen comment
map <F6> :Dox<CR>
" goto definition with F12
map <F11> <C-]>
"Buffers"
    "Create a new buffer"
nnoremap <C-n> :enew<CR>\t
    "Moving around"
nnoremap <F7> :bprevious<CR>
nnoremap <F8> :bnext<CR>
    "Close Buffer"
nnoremap <F9> :bd<CR>
" change leader key
let mapleader = ","
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
"Copy and replace word. Copy with ctrl+x and replace word with ctrl+v
nnoremap <C-x> "hyiw
nnoremap <C-v> diwh"hp

