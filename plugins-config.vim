"flake8
let g:flake8_show_in_gutter=1

"ale
let g:ale_linters_explicit = 1
let g:ale_linters = {'tex': ['chktex']}
let g:ale_fixers = {'tex': ['latexindent']}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 0

"fzf
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
let $FZF_DEFAULT_OPTS='--reverse'

"vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:tex_conceal='abdmg'

"handlebars
let g:mustache_abbreviations = 1

"vimtest
let test#strategy = "vimterminal"
let test#python#runner = 'pyunit'
let test#python#pyunit#executable='python3 -m unittest'

"coc
let g:coc_global_extensions = ['coc-tsserver', 'coc-eslint', 'coc-prettier', 'coc-html', 'coc-css', 'coc-json', 'coc-python', 'coc-yaml', 'coc-vimtex']

"coc documentation - copy paste
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

"END coc documentation - copy paste
