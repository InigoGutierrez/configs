" ~/.vim/ftplugin/java.vim
" Java-specific vim configuration

call matchadd('ColorColumn', '\%131v', 100)

let g:syntastic_java_checkers = []

nnoremap <buffer> <leader>gt :YcmCompleter GoTo<CR>
nnoremap <buffer> <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <buffer> <leader>fi :YcmCompleter FixIt<CR>
nnoremap <buffer> <leader>rr :YcmCompleter RefactorRename<Space>
nnoremap <buffer> <leader>e :YcmDiags<CR>
nnoremap <buffer> <leader>R :!./run.sh<CR>

