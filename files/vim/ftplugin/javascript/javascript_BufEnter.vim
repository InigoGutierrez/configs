" ~/.vim/ftplugin/javascript/javascript_BufEnter.vim
" JavaScript-specific vim configuration (reloaded when entering buffer)

" Tabs are expanded to 4 spaces
set tabstop=4 shiftwidth=4 expandtab
" Show existing tabs (they can be deleted with :retab)
set list

set textwidth=80

" Mappings
nnoremap <leader>Cc :sp ~/.vim/ftplugin/javascript/javascript.vim<CR>
nnoremap <leader>Cm :sp ~/.vim/ftplugin/javascript/javascript_BufEnter.vim<CR>

inoremap <leader>if if (<+++>) {<CR><++><CR>} <++><Esc>?<+++><CR>cf>
inoremap <leader>else else {<CR><+++><CR>}<CR><++><Esc>?<+++><CR>cf>

nnoremap <leader>gt :YcmCompleter GoTo<CR>
nnoremap <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <leader>fi :YcmCompleter FixIt<CR>
nnoremap <leader>r :YcmCompleter RefactorRename<Space>
nnoremap <leader>e :YcmDiags<CR>

nnoremap <leader>E :Errors<CR>
