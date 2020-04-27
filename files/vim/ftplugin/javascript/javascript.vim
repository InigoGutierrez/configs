" ~/.vim/ftplugin/javascript/javascript.vim
" JavaScript-specific vim configuration
"
" Syntastic linters: jslint

" JSLint arguments
" let g:syntastic_javascript_jslint_args = "--browser --indent"

" ALE
let b:ale_linters = ['eslint']

" Tabs are expanded to 4 spaces
setlocal tabstop=4 shiftwidth=4 expandtab
" Show existing tabs (they can be deleted with :retab)
setlocal list

" Column marker: 110 characters
call matchadd('ColorColumn', '\%111v', 100)
setlocal textwidth=110

" Mappings
nnoremap <buffer> <leader>C :sp ~/.vim/ftplugin/javascript/javascript.vim<CR>

"nnoremap <buffer> <leader>gt :YcmCompleter GoTo<CR>
"nnoremap <buffer> <leader>gr :YcmCompleter GoToReferences<CR>
"nnoremap <buffer> <leader>fi :YcmCompleter FixIt<CR>
"nnoremap <buffer> <leader>r :YcmCompleter RefactorRename<Space>
"nnoremap <buffer> <leader>e :YcmDiags<CR>
"nnoremap <buffer> <leader>E :Errors<CR>

inoremap <buffer> <leader>if if (<+++>) {<CR><++><CR>} <++><Esc>?<+++><CR>cf>
inoremap <buffer> <leader>else else {<CR><+++><CR>}<CR><++><Esc>?<+++><CR>cf>

