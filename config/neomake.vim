let g:neomake_verbose = 0

let g:neomake_error_sign   = { 'text': 'E', 'texthl': 'NeomakeErrorSign'   }
let g:neomake_warning_sign = { 'text': 'W', 'texthl': 'NeomakeWarningSign' }
let g:neomake_message_sign = { 'text': 'M', 'texthl': 'NeomakeMessageSign' }
let g:neomake_info_sign    = { 'text': 'i', 'texthl': 'NeomakeInfoSign'    }

let g:neomake_python_flake8_maker = {
    \ 'args': [
        \ '--format=default',
        \ '--ignore=E226,E24,E704,W503,W504,E127,E128,E221,E222,E265,E301'
    \ ],
    \ 'errorformat':
        \ '%E%f:%l: could not compile,%-Z%p^,' .
        \ '%A%f:%l:%c: %t%n %m,' .
        \ '%A%f:%l: %t%n %m,' .
        \ '%-G%.%#',
    \ 'postprocess': function('neomake#makers#ft#python#Flake8EntryProcess')
\ }
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
" E221: multiple spaces before operator
" E222: multiple spaces after operator
" E265: block comment should start with '# '
" E301: expected 1 blank line, found 0

let g:neomake_python_enabled_makers = ['flake8']

autocmd! BufWritePost * Neomake
