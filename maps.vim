nnoremap <silent> <C-p> :FZF<CR>

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let mapleader = " "
nnoremap <Leader>vv :vimgrep <cword> ./**/* <CR>:cw<CR>
set wildignore+=**/bower_components/**,**/node_modules/**,**vendor/bundle**

