"ale
let g:ale_linters = {'javascript': ['eslint','prettier'], 'css': ['prettier'], 'python': ['flake8']}
let g:ale_fixers = {'javascript': ['prettier', 'eslint'], 'css': ['prettier'], 'python': ['autopep8']}
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 0

"flake8
let g:flake8_show_in_gutter=1

"polyglot
let python_highlight_all=1

"fzf
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
let $FZF_DEFAULT_OPTS='--reverse'

"coc
let g:coc_global_extensions = ['coc-tsserver', 'coc-eslint', 'coc-prettier', 'coc-html', 'coc-css', 'coc-json', 'coc-python', 'coc-yaml']

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