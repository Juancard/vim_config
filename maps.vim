nnoremap <silent> <C-p> :FZF<CR>

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let mapleader = " "

nnoremap <Leader>vv :vimgrep <cword> ./**/* <CR>:cw<CR>
set wildignore+=**/bower_components/**,**/node_modules/**,**vendor/bundle**

nnoremap <Leader>h :wincmd h<CR>
nnoremap <Leader>j :wincmd j<CR>
nnoremap <Leader>k :wincmd k<CR>
nnoremap <Leader>l :wincmd l<CR>

nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

nmap <Leader>gh :diffget //2<CR>
nmap <Leader>gl :diffget //3<CR>

nnoremap <Leader>nt :NERDTree<CR>
nnoremap <Leader>ut :UndotreeToggle<CR>
