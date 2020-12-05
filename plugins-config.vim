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
