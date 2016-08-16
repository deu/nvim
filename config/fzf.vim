" Remap this:
nnoremap [fzf] <nop>

" Buffers:
nnoremap [fzf]<Space>
    \ :<C-u>call fzf#vim#buffers(
        \ { 'up': '40%', 'options': '--reverse' })<CR>

" Git project files:
nnoremap [fzf]a
    \ :<C-u>call fzf#vim#gitfiles('-c -o --directory --exclude-standard',
        \ { 'up': '40%', 'options': '--reverse' .
            \ '  --preview="' .
                \ 'if [ -d "{}" ]; then ls -1 "{}"; else head "{}"; fi' .
            \ '" --preview-window=right:50%',
        \ })<CR>

" Files:
nnoremap [fzf]f
    \ :<C-u>call fzf#vim#files('.',
        \ { 'up': '40%', 'options': '--reverse' .
            \ ' --preview="file {}" --preview-window=down:1'
        \ })<CR>

" Ag:
function! GetAGrep()
    call inputsave()
    let l:pattern = input('Pattern: ')
    call inputrestore()
    call fzf#vim#ag(l:pattern,
        \ { 'up': '40%', 'options': '--reverse' })
endfunction
nnoremap [fzf]g :<C-u>call GetAGrep()<CR>

" Help files:
nnoremap [fzf]h
    \ :<C-u>call fzf#vim#helptags(
        \ { 'up': '40%', 'options': '--reverse' })<CR>

" Use the right highlight colors for the status line:
autocmd! User FzfStatusLine setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
