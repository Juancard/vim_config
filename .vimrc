filetype off
set nu
set relativenumber
set cursorline
set encoding=utf-8
set showmatch
set showcmd
syntax enable

so ~/.vim/plugins.vim

colorscheme gruvbox
set background=dark    " Setting dark mode

au BufNewFile, BufRead *.py set tabstop=5 softtabstop=5 shiftwidth=5 textwidth=80 expandtab autoindent fileformat=unix

au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
let python_highlight_all=1
syntax on

let g:ale_linters = {'javascript': ['eslint','prettier'], 'css': ['prettier'], 'python': ['flake8']}
let g:ale_fixers = {'javascript': ['prettier', 'eslint'], 'css': ['prettier'], 'python': ['autopep8']}
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 0

let g:flake8_show_in_gutter=1

filetype plugin indent on

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" mappings
nnoremap <silent> <C-p> :FZF<CR>

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let mapleader = " "
nnoremap <Leader>vv :vimgrep <cword> ./**/* <CR>:cw<CR>
set wildignore+=**/bower_components/**,**/node_modules/**,**vendor/bundle**

