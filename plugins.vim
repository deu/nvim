"" Load plugins using vim-plug.

" PU updates plugins AND vim-plug:
command! PU PlugUpdate | PlugUpgrade

call plug#begin()

" Colors:
Plug 'deuiore/vim-xoria256mod'
Plug 'strange/strange.vim'

" Aestetics:
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'

" Text objects:
Plug 'kana/vim-textobj-user' | Plug 'kana/vim-textobj-entire'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'michaeljsmith/vim-indent-object'

" Functionality:
Plug 'junegunn/fzf', { 'dir': g:storedir . '/fzf', 'do': './install --all' }
    \ | Plug 'junegunn/fzf.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' } | Plug 'Shougo/unite.vim'
    \ | Plug 'Shougo/neoyank.vim'
    \ | Plug 'Shougo/neomru.vim'
    \ | Plug 'Shougo/junkfile.vim'
    \ | Plug 'tsukkee/unite-help'
Plug 'mbbill/undotree'
Plug 'tpope/vim-abolish'
Plug 'bronson/vim-visual-star-search'

" Autocompletion:
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi', { 'for': 'python' }

" Syntax:
Plug 'neomake/neomake'
Plug 'deuiore/vim-hlextraws'
Plug 'deuiore/vim-indentblank'

" Languages:
Plug 'othree/html5.vim', { 'for': ['html', 'twig'] }
Plug 'lumiliet/vim-twig', { 'for': 'twig' }

" Git:
Plug 'itchyny/vim-gitbranch'
Plug 'airblade/vim-gitgutter'

call plug#end()
