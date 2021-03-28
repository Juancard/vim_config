call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'mbbill/undotree'
Plug 'yuezk/vim-js'
Plug 'tmhedberg/SimpylFold'
Plug 'Chiel92/vim-autoformat'

"autocomplete/goto
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Themes
Plug 'morhetz/gruvbox'

"syntax
Plug 'dense-analysis/ale'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'nvie/vim-flake8'
Plug 'lervag/vimtex'

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
