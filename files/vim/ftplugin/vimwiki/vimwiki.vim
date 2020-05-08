" ~/.vim/ftplugin/vimwiki.vim
" vimwiki-specific vim configuration
"
" Syntastic linter: mdl, proselint, textlint

let g:syntastic_vimwiki_checkers = ['markdown/mdl']

" Tabs hate: tabs are expanded to 2 spaces
setlocal tabstop=2 shiftwidth=2 expandtab
" Show existing tabs (they can be deleted with :retab)
setlocal list

" Column marker: 80 characters
call matchadd('ColorColumn', '\%101v', 100)
setlocal textwidth=100

nnoremap <buffer> <leader>C :sp ~/.vim/ftplugin/vimwiki/vimwiki.vim<CR>
nnoremap <buffer> <leader>e :Errors<CR>

nnoremap <buffer> <leader>t :-1r ~/.vim/ftplugin/vimwiki/snips/template.txt<CR>

nnoremap <buffer> <leader>c :w<CR>:!toPDF.sh "%"<CR><CR>
nnoremap <buffer> <leader>o :w<CR>:!toPDF.sh -o "%"<CR>

" Syntax highlighting colors
highlight Title ctermfg=darkblue

