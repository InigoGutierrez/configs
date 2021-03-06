" ~/.vim/ftplugin/css/css.vim
" CSS-specific vim configuration
"
" Syntastic linters: csslint, prettycss, sstylelint

"let g:syntastic_css_csslint_args = "--ignore=order-alphabetical,ids"

setlocal textwidth=80
call matchadd('ColorColumn', '\%81v', 100)

" Tabs are expanded to 2 spaces
setlocal tabstop=2 shiftwidth=2 expandtab
" Don't show existing tabs
setlocal nolist

" Mappings
nnoremap <buffer> <leader>C :sp ~/.vim/ftplugin/css/css.vim<CR>
nnoremap <buffer> <leader>e :Errors<CR>
nnoremap <buffer> <leader>s vi{!sort<CR>

