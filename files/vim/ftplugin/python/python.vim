" ~/.vim/ftplugin/python/python.vim
" Python-specific vim configuration

" Column marker: 80 characters
call matchadd('ColorColumn', '\%81v', 100)
"let b:syntastic_mode="passive"

nnoremap <buffer> <leader>C :sp ~/.vim/ftplugin/python/python.vim<CR>
nnoremap <buffer> <leader>E :Errors<CR>

nnoremap <buffer> <leader>gt :YcmCompleter GoTo<CR>
nnoremap <buffer> <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <buffer> <leader>gd :YcmCompleter GetDoc<CR>
nnoremap <buffer> <leader>gT :YcmCompleter GetType<CR>
nnoremap <buffer> <leader>fi :YcmCompleter FixIt<CR>
nnoremap <buffer> <leader>e :YcmDiags<CR>
