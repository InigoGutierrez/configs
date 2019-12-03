" ~/.vim/ftplugin/css/css_mappings.vim
" CSS-specific vim configuration (reloaded when entering buffer)

" Tabs are expanded to 4 spaces
set tabstop=4 shiftwidth=4 noexpandtab
" Don't show existing tabs
set nolist

set textwidth=80

" Mappings
nnoremap <leader>Cc :sp ~/.vim/ftplugin/css/css.vim<CR>
nnoremap <leader>Cm :sp ~/.vim/ftplugin/css/css_mappings.vim<CR>
nnoremap <leader>e :Errors<CR>
nnoremap <leader>s vi{!sort<CR>
