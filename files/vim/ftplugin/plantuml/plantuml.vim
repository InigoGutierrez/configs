" ~/.vim/ftplugin/plantuml/plantuml.vim
" PlantUML-specific vim configuration

" Tabs hate: tabs are expanded to 4 spaces
setlocal tabstop=4 shiftwidth=4 expandtab
" Show existing tabs (they can be deleted with :retab)
setlocal list

" Column marker: 80 characters
call matchadd('ColorColumn', '\%81v', 100)
setlocal textwidth=80

nnoremap <buffer> <leader>C :sp ~/.vim/ftplugin/plantuml/plantuml.vim<CR>
nnoremap <buffer> <leader>e :Errors<CR>

nnoremap <buffer> <leader>c :w<CR>:!compilePlantUML.sh "%"<CR><CR>
nnoremap <buffer> <leader>o :w<CR>:!compilePlantUML.sh -o "%"<CR><CR>
