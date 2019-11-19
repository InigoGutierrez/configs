" ~/.vim/ftplugin/vimwiki.vim
" vimwiki-specific vim configuration
"
" Syntastic linter: mdl, proselint, textlint

" Tabs hate: tabs are expanded to 2 spaces
set tabstop=2 shiftwidth=2 expandtab
" Show existing tabs (they can be deleted with :retab)
set list

" Column marker: 80 characters
call matchadd('ColorColumn', '\%81v', 100)
set textwidth=80

let g:syntastic_vimwiki_checkers = ['markdown/mdl']

nnoremap <leader>c :sp ~/.vim/ftplugin/vimwiki.vim<CR>
nnoremap <leader>e :Errors<CR>
