" ~/.vim/ftplugin/text/text.vim
" Plain text files vim configuration
"
" Syntastic linter: proselint

call matchadd('ColorColumn', '\%101v', 100)
setlocal textwidth=100

nnoremap <buffer> <leader>C :sp ~/.vim/ftplugin/text/text.vim<CR>

" Proselint is slow to act
nnoremap <buffer> <leader>sp :SyntasticCheck proselint<CR>
nnoremap <buffer> <leader>e :Errors<CR>
