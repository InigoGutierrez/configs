" ~/.vim/ftplugin/python/python.vim
" Python-specific vim configuration

" Column marker: 80 characters
call matchadd('ColorColumn', '\%81v', 100)
let b:syntastic_mode="passive"

nnoremap <leader>c :sp ~/.vim/ftplugin/python/python.vim<CR>
nnoremap <leader>E :Errors<CR>

nnoremap <leader>gt :YcmCompleter GoTo<CR>
nnoremap <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <leader>gd :YcmCompleter GetDoc<CR>
nnoremap <leader>gT :YcmCompleter GetType<CR>
nnoremap <leader>fi :YcmCompleter FixIt<CR>
nnoremap <leader>r :YcmCompleter RefactorRename<Space>
nnoremap <leader>e :YcmDiags<CR>
