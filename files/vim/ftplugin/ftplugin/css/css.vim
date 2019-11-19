" ~/.vim/ftplugin/css/css.vim
" CSS-specific vim configuration
"
" Syntastic linters: csslint, prettycss, sstylelint


call matchadd('ColorColumn', '\%81v', 100)

let g:syntastic_css_csslint_args = "--ignore=order-alphabetical,ids"

autocmd BufEnter *.css source ~/.vim/ftplugin/css/css_mappings.vim
