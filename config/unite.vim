function! s:UniteConfig()
    call unite#filters#matcher_default#use(['matcher_fuzzy'])
    call unite#filters#sorter_default#use(['sorter_selecta'])
    call unite#custom#profile('default', 'context', {
        \ 'prompt': '> '
    \ })
    call unite#custom#source('file_rec,file_rec/async,file_rec/git',
        \ 'max_candidates', 0) " Unlimited candidates.
endfunction
autocmd User InitPost call s:UniteConfig()

" Remap this:
nnoremap [unite] <nop>

" Search for all files from the current directory (and create new ones):
nnoremap [unite]f
    \ :<C-u>Unite -start-insert file_rec/async:! file/new<CR>

" Search for files in the current git project:
nnoremap [unite]p
    \ :<C-u>Unite -start-insert
        \ file_rec/git:--cached:--others:--exclude-standard<CR>

" MRU:
nnoremap [unite]u
    \ :<C-u>Unite -start-insert neomru/directory neomru/file<CR>

" Buffers:
nnoremap [unite]<Space> :<C-u>Unite -start-insert buffer<CR>

" Yank history:
nnoremap [unite]y :<C-u>Unite history/yank<CR>

" Registers:
nnoremap [unite]r :<C-u>Unite register<CR>

" Marks:
nnoremap [unite]m :<C-u>Unite mark<CR>

" Junkfiles:
nnoremap [unite]j :<C-u>Unite -start-insert junkfile junkfile/new<CR>

" Help files:
nnoremap [unite]h :<C-u>Unite -start-insert help<CR>

" Grep from current directory. Use ag if present:
if executable('ag')
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts =
        \ '-i --vimgrep --hidden --ignore ' .
        \ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
    let g:unite_source_grep_recursive_opt = ''
endif
nnoremap [unite]g :<C-u>Unite junkfile grep:.<CR>

" Keymaps specific to the unite buffer:
autocmd FileType unite call s:UniteBuffer()
function! s:UniteBuffer()
    imap <buffer> <Esc> <Plug>(unite_exit)
    imap <buffer> <C-j> <Plug>(unite_insert_leave)
    nmap <buffer> <Esc> <Plug>(unite_insert_enter)
    " Remap these too so that even if you don't lift the finger from CTRL
    " fast enough you can still navigate:
    nmap <buffer> <C-j> <Plug>(unite_loop_cursor_down)
    nmap <buffer> <C-k> <Plug>(unite_loop_cursor_up)
endfunction
