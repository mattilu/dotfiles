call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'

Plug 'ryanoasis/nerd-fonts'
Plug 'ryanoasis/vim-devicons'

Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

call plug#end()

set showfulltag
set shiftwidth=2 expandtab autoindent
set ignorecase smartcase
set incsearch hlsearch
set virtualedit=block,insert
set number
set backspace=indent,eol,start
set hidden
set cpoptions+=$
set statusline=%f\ %m%r\ Line:%l/%L[%p%%]\ Col:%c\ [FT=%Y]\ [%b=0x%B]
set showcmd showmode wildmenu
set mousehide mouse=a
set scrolloff=3
set textwidth=0 nowrap
set fillchars=

let mapleader=","

" Invert highlighting
nmap <silent> <Leader>n :set invhls<cr>:set hls?<cr>

" Hop between quickfix errors
nmap <Leader>. :cn<cr>
nmap <Leader>, :cp<cr>

" Autoformat with clang-format
map <c-k> :%pyf /usr/lib/llvm/5/share/clang/clang-format.py<cr>
imap <c-k> <c-o>:%pyf /usr/lib/llvm/5/share/clang/clang-format.py<cr>

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" YouCompleteMe
let g:ycm_server_python_interpreter="/usr/bin/python2"
map <Leader>jd :YcmComplete GoTo<cr>
