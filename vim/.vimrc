set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'

" Syntax Highlighting
Plugin 'vim-syntastic/syntastic'

" PEP 8 checking 
Plugin 'nvie/vim-flake8'



" Color Schemes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" File Browsing
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'mortonfox/nerdtree-clip'

" Super Searching
Plugin 'kien/ctrlp.vim'

" Git Integration
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'

" Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Comment out line
Plugin 'preservim/nerdcommenter'

" Git Gutter
Plugin 'airblade/vim-gitgutter'

" Python Docstring
" NOTE disable python enviroment before running
Plugin 'heavenshell/vim-pydocstring', { 'do': 'make install' }

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

map <C-c> "+y<CR>

" Split configs
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Try this if you want to see the docstrings for folded code
let g:SimpylFold_docstring_preview=1

" PEP 8 Indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set shiftround
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix


" Pasting settings
" Just to see tab/spaces/endline clearly:
set encoding=utf-8
set list
set listchars=tab:▸\ ,eol:¬
nnoremap <F5> :set list!<cr>

set pastetoggle=<F9>
noremap  <F9>   :set invpaste paste?<CR>
inoremap <F9>   <C-O>:set invpaste<CR>

" Fullstack dev
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Flag unnecessary whitspace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" UTF-8 Support
set encoding=utf-8

" Map Leader to Space
let mapleader=" "

" You Complete Me 
" 1. close Autocomplete
" 2. GoTo shortcut
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <C-I> :YcmCompleter GetDoc<CR>

" Syntax Highlighting
let python_highlight_all=1
syntax on

" Color Scheme Settings
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

call togglebg#map("<F5>")


" Hide .pyc files File Browsing
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

map <leader>n <plug>NERDTreeTabsToggle<CR>



" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
filetype plugin indent on    " required

map <C-c> "+y<CR>

" Split configs
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Try this if you want to see the docstrings for folded code
let g:SimpylFold_docstring_preview=1

" PEP 8 Indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix


" Fullstack dev
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Flag unnecessary whitspace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" UTF-8 Support
set encoding=utf-8

" Map Leader to Space
let mapleader=" "

" You Complete Me 
" 1. close Autocomplete
" 2. GoTo shortcut
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


" Syntax Highlighting
let python_highlight_all=1
syntax on

" Color Scheme Settings
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

call togglebg#map("<F5>")

" Line numbering
set nu

" System Clipboard
set clipboard=unnamed

" Change vim update swap time to 100ms
set updatetime=100


map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
filetype plugin on
map <C-c> :NERDCommenterToggle
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

" Gitgutter Signs' colours and symbols
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = 'yy'
let g:gitgutter_sign_removed = 'zz'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_modified_removed = 'ww'

highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

" python with virtualenv support 
py3 << EOF
#import os
#import sys
#import subprocess
#
#if 'VIRTUAL_ENV' in os.environ:
#	 project_base_dir = os.environ['VIRTUAL_ENV']
#	 activate_this = os.path.join(project_base_dir, 'bin/activate')
#	 print(project_base_dir)
#	 env_name = project_base_dir.split('/')[-1]
#	 cmd = f"pyenv activate {env_name}"
#	 print(cmd)
#	 os.popen(cmd)
EOF
