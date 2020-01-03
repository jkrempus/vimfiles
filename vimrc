set nocompatible              " be iMproved, required
filetype off                  " required

if has("win32")
  set shell=$COMSPEC
  set rtp+=~/vimfiles/bundle/Vundle.vim
else
  set rtp+=~/.vim/bundle/Vundle.vim
endif

call vundle#begin('~/vimfiles/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'nanotech/jellybeans.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/a.vim'
Plugin 'osyo-manga/vim-anzu'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set shiftwidth=2 tabstop=2 expandtab

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set guifont=Anonymous_Pro:h11

set wildmode=longest:full,full

colorscheme jellybeans

" nnoremap <C-f> :FufFile **/<cr>
nnoremap <C-f> :FufFileWithCurrentBufferDir<cr>
nnoremap <C-b> :FufBuffer<cr>
nnoremap <C-x> :FufBookmarkFile<cr>
nnoremap <leader>b :FufBookmarkFileAdd<cr>
nnoremap <F2> :A<cr>

set ignorecase smartcase
set bufhidden=hide
set undodir=~/.vim/undodir
set undofile

set backspace=2 " make backspace work like most other apps

set laststatus=2
set statusline=%f         " Path to the file
set statusline+=%=        " Switch to the right side
set statusline+=%6.6l     " Current line
set statusline+=\ /\      " Separator
set statusline+=%-6.6L    " Total lines
set statusline+=%6.6c\    " Total lines
set hidden

nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)

set belloff=all

nn <silent> <A-j> :cn<cr>
nn <silent> <A-k> :cp<cr>
