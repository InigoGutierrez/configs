" ~/.vim/ftplugin/vimwiki.vim
" vimwiki-specific vim configuration
"
" Syntastic linter: mdl, proselint, textlint

"let g:syntastic_vimwiki_checkers = ['markdown/mdl']

" Tabs hate: tabs are expanded to 2 spaces
setlocal tabstop=2 shiftwidth=2 expandtab
" Show existing tabs (they can be deleted with :retab)
setlocal list

" Text width
match ColorColumn /\%81v/
setlocal textwidth=80
setlocal linebreak

" Syntax highlighting colors
highlight Title ctermfg=blue
highlight TitleHash ctermfg=cyan
match TitleHash /^##*/

nnoremap <buffer> <leader>C :sp ~/.vim/ftplugin/vimwiki/vimwiki.vim<CR>
nnoremap <buffer> <leader>e :Errors<CR>

nnoremap <buffer> <leader>tt :r ~/.vim/ftplugin/vimwiki/snips/template.txt<CR>
nnoremap <buffer> <leader>tp :r ~/.vim/ftplugin/vimwiki/snips/plantUml.txt<CR>/<+++><CR>cf>

nnoremap <buffer> <leader>c :w<CR>:!toPDF.sh "%"<CR><CR>
nnoremap <buffer> <leader>o :w<CR>:!toPDF.sh -o "%"<CR><CR>

inoremap <buffer> <leader>h <Esc><<A
inoremap <buffer> <leader>l <Esc>>>A
