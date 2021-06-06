call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'mbbill/undotree'
Plug 'yuezk/vim-js'
Plug 'tmhedberg/SimpylFold'
Plug 'Chiel92/vim-autoformat'
Plug 'janko-m/vim-test'

"less
Plug 'groenewege/vim-less'

"autocomplete/goto
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Themes
Plug 'morhetz/gruvbox'

"syntax
Plug 'dense-analysis/ale'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'nvie/vim-flake8'
Plug 'lervag/vimtex'
Plug 'mustache/vim-mustache-handlebars'

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

" markdown previewer
" If you don't have nodejs and yarn
" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()
