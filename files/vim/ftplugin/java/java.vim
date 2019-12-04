" ~/.vim/ftplugin/java.vim
" Java-specific vim configuration

nnoremap <leader>gt :YcmCompleter GoTo<CR>
nnoremap <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <leader>fi :YcmCompleter FixIt<CR>
nnoremap <leader>rr :YcmCompleter RefactorRename<Space>
nnoremap <leader>e :YcmDiags<CR>
nnoremap <leader>R :!./run.sh<CR>

call matchadd('ColorColumn', '\%131v', 100)

let g:syntastic_java_checkers = []
