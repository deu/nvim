"" Run Commands

" === Files and buffers
set hidden                      " Don't unload abandoned buffers.
set noswapfile                  " Disable the creation of .swp files.
set undofile                    " Enable persistent undo.

" === Status bar
set wildmode=longest:full       " Wildmenu behaves like bash.
set noshowmode                  " Don't show current mode.
set showcmd                     " Show current command.

" === Lines and line numbering
set number                      " Line numbers (absolute).
set relativenumber              " Line numbers (relative).
set cursorline                  " Highlight the current line.
set colorcolumn=80              " Line length marker.
set scrolloff=5                 " Cursor's page padding.

" === Indentation
set expandtab                   " <TAB> inserts whitespaces.
"set noexpandtab                 " <TAB> inserts tabs.
set tabstop=4                   " How long an actual tab is.
set shiftwidth=4                " Length of each indentation step.
set softtabstop=4               " Number of whitespaces seen as a tab.
set breakindent                 " Keep indentation on wrapped lines.
" Use actual tabs when editing certain filetypes:
autocmd FileType go,html,make setlocal noexpandtab
" Remove trailing whitespaces when saving certain filetypes:
"autocmd FileType c,cpp,css,go,html,perl,php,python
"   \ autocmd BufWritePre <buffer> :%s/\s\+$//e

" === Search
"set noincsearch                 " Disable incremental search.
set ignorecase                  " Ignore case...
set smartcase                   " ...unless we start with upper case.

" === Autocompletion
set completeopt-=preview        " Disable the preview window.
set pumheight=10                " Number of items in the menu.
set infercase                   " Smarter case during autocompletion.

" === Clipboard
if $TERM != 'linux'
    if has ('unnamedplus')
        set clipboard=unnamedplus
    else
        set clipboard=unnamed
    endif
endif

" === Aestetics
if &t_Co == 256 || has("gui_running")
    colorscheme xoria256mod
else
    colorscheme strange
endif
" Change the cursor when changing modes (if the terminal emulator supports it):
if $TERM != 'linux'
    let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
endif
