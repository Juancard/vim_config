filetype off
set nu
set relativenumber
set cursorline
set encoding=utf-8
set showmatch
set showcmd
syntax enable

so ~/.vim/plugins.vim
so ~/.vim/maps.vim
so ~/.vim/plugins-config.vim

colorscheme gruvbox
set background=dark    " Setting dark mode

autocmd FileType tex setlocal spell
autocmd FileType tex setlocal spell spelllang=es
autocmd FileType tex setlocal tw=80
autocmd FileType tex setlocal conceallevel=1

au BufNewFile, BufRead *.py set tabstop=5 softtabstop=5 shiftwidth=5 textwidth=80 expandtab autoindent fileformat=unix

au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
syntax on

filetype plugin indent on

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

