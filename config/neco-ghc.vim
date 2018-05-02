" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" Allow using stack's own ghc-mod. Using the global executable prevents the
" globally installed stack packages to be seen by neco-ghc
"let g:necoghc_use_stack = 1

" Show detailed information (type) of symbols
let g:necoghc_enable_detailed_browse = 1
