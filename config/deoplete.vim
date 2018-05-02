let g:deoplete#enable_at_startup = 1

" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>cr_close_deoplete_popup()<CR>
function! s:cr_close_deoplete_popup() abort
    return deoplete#close_popup() . "\<CR>"
endfunction
