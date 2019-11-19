" ~/.vim/ftplugin/text.vim
" Plain text files vim configuration
"
" Syntastic linter: proselint

nnoremap <leader>c :sp ~/.vim/ftplugin/text.vim<CR>
nnoremap <leader>e :Errors<CR>

call matchadd('ColorColumn', '\%101v', 100)

" Proselint is slow to act
" let g:syntastic_text_checkers = ['proselint']
