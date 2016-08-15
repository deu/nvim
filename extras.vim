"" Extra "stuff" that might or might be not put in a plugin after it's
"" been extensively tested. In other words: highly experimental stuff.


" Switch between rnu and nornu when switching focus, and entering and leaving
" the insert and command line mode. Only switch if "number" is set too.
" The command line switch only happens if there is no range, and it's
" configurable to allow any specific mode (e.g.: ex, search, reverse, etc).
" Only the ex command line (":") is allowed for now (and maybe it's the only
" one that makes sense anyway).

autocmd InsertLeave,WinEnter,FocusGained * :if (&number) | :setl rnu   | :endif
autocmd InsertEnter,WinLeave,FocusLost   * :if (&number) | :setl nornu | :endif

function! CmdLineEnter(mode)
    if !v:count && &number
        return ":setl nornu\<CR>" . a:mode
    endif
    return a:mode
endfunction

function! CmdLineLeave(modes, command)
    if getcmdtype() =~ a:modes && !v:count && &number
        setl rnu
    endif
    return a:command
endfunction

nnoremap <expr> : CmdLineEnter(':')
cnoremap <silent> <expr> <CR>  CmdLineLeave(':', "\<CR>")
cnoremap <silent> <expr> <Esc> CmdLineLeave(':', "\<C-c>")
cnoremap <silent> <expr> <C-c> CmdLineLeave(':', "\<C-c>")
