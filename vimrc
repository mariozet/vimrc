set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" Syntax plugins
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'erikzaadi/vim-ansible-yaml'
" Plugin 'Valloric/YouCompleteMe'

" Tree View
Plugin 'scrooloose/nerdtree'

" Color schema
Plugin 'jnurmine/Zenburn'
" Search Plugin
Plugin 'kien/ctrlp.vim'

" Git Integration
Plugin 'tpope/vim-fugitive'

" PowerLine tool
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable synttax checking
syntax on

" Syntastic minimal settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Nerdtree options
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let NERDTreeShowHidden=1

" Python Syntax checking
let python_highlight_all=1

" Enable folding with the spacebar
nnoremap <space> za

" Preview Docstring on Folded Function
let g:SimpylFold_docstring_preview=1

set nu
set encoding=utf-8

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.yaml
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" Highlight White Spaces
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.yaml,*.yml,*.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

autocmd vimenter * NERDTree
