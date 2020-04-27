" ~/.vim/ftplugin/text/text.vim
" Plain text files vim configuration
"
" Syntastic linter: proselint

" Tabs hate: tabs are expanded to 2 spaces
setlocal tabstop=2 shiftwidth=2 expandtab
" Show existing tabs (they can be deleted with :retab)
setlocal list

call matchadd('ColorColumn', '\%101v', 100)
setlocal textwidth=100

nnoremap <buffer> <leader>C :sp ~/.vim/ftplugin/text/text.vim<CR>

" Proselint is slow to act
nnoremap <buffer> <leader>sp :SyntasticCheck proselint<CR>
nnoremap <buffer> <leader>e :Errors<CR>
