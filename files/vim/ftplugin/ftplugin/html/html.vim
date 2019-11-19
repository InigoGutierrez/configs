" ~/.vim/ftplugin/html/html.vim
" HTML-specific vim configuration
"
" Syntastic linter: tidy

call matchadd('ColorColumn', '\%101v', 100)

autocmd BufEnter *.html source ~/.vim/ftplugin/html_mappings.vim
