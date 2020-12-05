filetype off
set nu
set relativenumber
set cursorline
set encoding=utf-8
set showmatch
set showcmd
syntax enable

call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'tmhedberg/SimpylFold'
Plug 'dense-analysis/ale'
Plug 'nvie/vim-flake8'
Plug 'preservim/nerdcommenter'
Plug 'Chiel92/vim-autoformat'

" search
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" typing
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'

" git
Plug 'tpope/vim-fugitive'

call plug#end()

colorscheme gruvbox
set background=dark    " Setting dark mode

au BufNewFile, BufRead *.py set tabstop=5 softtabstop=5 shiftwidth=5 textwidth=80 expandtab autoindent fileformat=unix

au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
let python_highlight_all=1
syntax on

let g:ale_fixers = {'javascript': ['prettier', 'eslint'], 'css': ['prettier'], 'python': ['autopep8']}
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1

filetype plugin indent on

" mappings
nnoremap <silent> <C-p> :FZF<CR>
