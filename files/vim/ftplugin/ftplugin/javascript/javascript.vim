" ~/.vim/ftplugin/javascript/javascript.vim
" JavaScript-specific vim configuration
"
" Syntastic linters: jslint

" Column marker: 80 characters
call matchadd('ColorColumn', '\%81v', 100)

" JSLint arguments
let g:syntastic_javascript_jslint_args = "--browser --indent"

autocmd BufEnter *.js source ~/.vim/ftplugin/javasctipt/javascript_BufEnter.vim
