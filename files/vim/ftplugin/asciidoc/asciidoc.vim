" ~/.vim/ftplugin/asciidoc/asciidoc.vim
" asciidoc vim configuration
"
" Syntastic linter: proselint

call matchadd('ColorColumn', '\%81v', 100)
setlocal textwidth=80

nnoremap <buffer> <leader>C :sp ~/.vim/ftplugin/asciidoc/asciidoc.vim<CR>

" Proselint is slow to act
nnoremap <buffer> <leader>sp :SyntasticCheck proselint<CR>
nnoremap <buffer> <leader>e :Errors<CR>
