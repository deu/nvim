"" Initialization. This should be the first file nvim sources.

" Pointer to the user's nvim runtime path (e.g. ~/.config/nvim):
let g:nvim_rp = split(&runtimepath, ',')[0]

" Check if vim-plug is installed and install it if it isn't:
if !filereadable(g:nvim_rp . '/autoload/plug.vim')
    execute '!curl -fLo ' . g:nvim_rp . '/autoload/plug.vim --create-dirs '
        \ 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

" Execute user-defined pre-init autocommands:
if exists("#User#InitPre")
    doautocmd User InitPre
endif

" Load plugins' configuration files:
for path in split(globpath(g:nvim_rp . '/config', '*.vim'), "\n")
    execute 'source' fnameescape(path)
endfor

" Load plugins:
execute 'source ' . g:nvim_rp . '/plugins.vim'

" Load global configuration:
execute 'source ' . g:nvim_rp . '/rc.vim'

" Load keymaps:
execute 'source ' . g:nvim_rp . '/keymaps.vim'

" Load extra stuff:
execute 'source ' . g:nvim_rp . '/extras.vim'

" Execute user-defined post-init autocommands:
if exists("#User#InitPost")
    doautocmd User InitPost
endif
