let g:ale_enabled = 1

let g:ale_sign_column_always    = 1
let g:ale_open_list             = 0
let g:ale_keep_list_window_open = 1

let g:ale_sign_error   = 'E'
let g:ale_sign_warning = 'W'
let g:ale_sign_info    = 'I'

let g:ale_lint_on_text_changed = 'never'

let g:ale_linters = {
    \ 'python': ['flake8'],
    \ 'haskell': ['ghc-mod'],
    \ 'tex': ['chktex'],
    \ }

let g:ale_python_flake8_options =
    \ '--format=default
    \  --ignore=E226,E24,E704,W503,W504,
              \E127,E128,E201,E202,E221,E222,E265,E301,E501'
" (Default: E121,E123,E126,E226,E24,E704,W503,W504)
" E121: continuation line under-indented for hanging indent (default, disabled)
" E123: closing bracket does not match indentation of opening bracket's
"       line (default, disabled)
" E126: continuation line over-indented for hanging indent (default, disabled)
" E226: missing whitespace around arithmetic operator (default)
" E24: multiple spaces after ','; tab after ',' (default)
" E704: multiple statements on one line (def) (default)
" W503: line break occurred before a binary operator (default)
" W504: line break occurred after binary operator (default)
" E127: continuation line over-indented for visual indent
" E128: continuation line under-indented for visual indent
" E201: whitespace after '('
" E202: whitespace before ')'
" E221: multiple spaces before operator
" E222: multiple spaces after operator
" E265: block comment should start with '# '
" E301: expected 1 blank line, found 0
" E501: line too long

let g:ale_tex_chktex_options =
    \ '--nowarn=1'
" 1: Command terminated with space.
