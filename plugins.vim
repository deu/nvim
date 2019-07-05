"" Load plugins using vim-plug.

" PU updates plugins AND vim-plug:
command! PU PlugUpdate | PlugUpgrade

call plug#begin()

" Colors:
Plug 'deu/vim-xoria256mod'
Plug 'strange/strange.vim'
Plug 'morhetz/gruvbox'

" Aestetics:
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'

" Text objects:
Plug 'kana/vim-textobj-user' | Plug 'kana/vim-textobj-entire'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'michaeljsmith/vim-indent-object'

" Functionality:
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'junegunn/fzf', { 'dir': g:storedir . '/fzf', 'do': './install --all' }
    \ | Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'tpope/vim-abolish'
Plug 'bronson/vim-visual-star-search'
Plug 'junegunn/vim-easy-align'

" Autocompletion:
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi', { 'for': 'python' }
Plug 'eagletmt/neco-ghc', { 'for': 'haskell' }

" Syntax:
Plug 'w0rp/ale'
Plug 'deu/vim-hlextraws'
Plug 'deu/vim-indentblank'

" Languages:
Plug 'othree/html5.vim', { 'for': ['html', 'twig'] }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'lumiliet/vim-twig', { 'for': 'twig' }
Plug 'tweekmonster/django-plus.vim', { 'for': ['python'] }
Plug 'neovimhaskell/haskell-vim', { 'for': ['haskell', 'cabal'] }
Plug 'deu/haskell-helpers.vim', { 'for': 'haskell' }
Plug 'lervag/vimtex', { 'for': 'tex' }

" Git:
Plug 'itchyny/vim-gitbranch'
Plug 'airblade/vim-gitgutter'

call plug#end()
