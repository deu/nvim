let g:airline_theme = 'bubblegum'

let g:airline_left_sep  = ''
let g:airline_right_sep = ''

let g:airline#extensions#tabline#enabled           = 1
let g:airline#extensions#tabline#left_sep          = ''
let g:airline#extensions#tabline#left_alt_sep      = ''
let g:airline#extensions#tabline#right_sep         = ''
let g:airline#extensions#tabline#right_alt_sep     = ''
let g:airline#extensions#tabline#show_buffers      = 0
let g:airline#extensions#tabline#show_tab_type     = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_splits       = 0
let g:airline#extensions#tabline#show_tab_nr       = 0
let g:airline#extensions#tabline#buffer_nr_show    = 1

let g:airline#extensions#whitespace#enabled = 0

function! s:AirlineInit()
    let g:airline_section_b =
        \ airline#section#create(['hunks', '%{gitbranch#name()}'])
endfunction
autocmd User AirlineAfterInit call s:AirlineInit()
