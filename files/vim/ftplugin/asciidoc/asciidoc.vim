" ~/.vim/ftplugin/asciidoc/asciidoc.vim
" asciidoc vim configuration
"
" Syntastic linter: proselint

" Tabs hate: tabs are expanded to 2 spaces
setlocal tabstop=2 shiftwidth=2 expandtab
" Show existing tabs (they can be deleted with :retab)
setlocal list

" Column marker: 80 characters
" call matchadd('ColorColumn', '\%81v', 100)
setlocal textwidth=80

nnoremap <buffer> <leader>C :sp ~/.vim/ftplugin/asciidoc/asciidoc.vim<CR>

" Proselint is slow to act
nnoremap <buffer> <leader>sp :SyntasticCheck proselint<CR>
nnoremap <buffer> <leader>e :Errors<CR>
