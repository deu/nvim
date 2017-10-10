"" Global keymaps.

let mapleader = '\' " The default, but let's be sure.

" QQ quits all, QZ does the same even if there are unsaved files:
nnoremap QQ :<C-u>qa<CR>
nnoremap QZ :<C-u>qa!<CR>

" Move around within wrapped lines but keep the original Nj/k behaviour:
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

" <Leader><Esc> in normal mode clears highlights:
nnoremap <Leader><Esc> :<C-u>noh<CR>

" Tabs:
noremap <Leader><C-t> :<C-u>tabe<CR>
noremap <Leader><C-w> :<C-u>tabc<CR>
noremap <C-h> :<C-u>tabp<CR>
noremap <C-l> :<C-u>tabn<CR>
noremap <Leader><C-h> :<C-u>-tabm<CR>
noremap <Leader><C-l> :<C-u>+tabm<CR>

" Make C-j and C-k the same as Down and Up when the autocomplete menu is open:
inoremap <expr> <C-j> pumvisible() ? "\<Down>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<Up>"   : "\<C-k>"

" Expand %% to %:h (basename(pwd)) in the command line:
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h') . '/' : '%%'

" <Leader>:W prepares to writing with "sudo tee".
nnoremap <Leader>:W :<C-u>w !sudo tee % > /dev/null

" Execute macro over a visual range:
xnoremap <silent> @
    \ :<C-u>ec '@'<CR>:exe ":'<,'>normal @" . nr2char(getchar())<CR>

" & preserves flags:
nnoremap & :<C-u>&&<CR>
xnoremap & :<C-u>&&<CR>

" Increment and decrement with + and -:
nnoremap + <C-a>
nnoremap - <C-x>


" --- Plugins ---

" fzf master key:
nmap <silent> <Space> [fzf]

" Toggle undotree:
nnoremap <Leader>u :<C-u>UndotreeToggle<CR>
