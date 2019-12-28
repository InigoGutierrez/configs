" ~/.vim/ftplugin/cpp/cpp.vim
" C++-specific vim configuration

highlight Comment ctermfg=darkgreen

" Column marker: 80 characters
call matchadd('ColorColumn', '\%81v', 100)

nnoremap <buffer> <leader>C :sp ~/.vim/ftplugin/cpp/cpp.vim<CR>
nnoremap <buffer> <leader>E :Errors<CR>

nnoremap <buffer> <leader>c :w<CR>:!g++ "%"; ./a.out<Space>
nnoremap <buffer> <leader>E :Errors<CR>

nnoremap <buffer> <leader>gt :YcmCompleter GoTo<CR>
nnoremap <buffer> <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <buffer> <leader>gd :YcmCompleter GetDoc<CR>
nnoremap <buffer> <leader>gT :YcmCompleter GetType<CR>
nnoremap <buffer> <leader>fi :YcmCompleter FixIt<CR>
nnoremap <buffer> <leader>e :YcmDiags<CR>

inoremap <buffer> <leader>if if (<+++>) {<CR><++><CR>}?<+++><CR>cf>
inoremap <buffer> <leader>for for (<+++>; <++>; <++>) {<CR><++><CR>}?<+++><CR>cf>
nnoremap <buffer> <leader>temp :-1r ~/.vim/ftplugin/cpp/snips/template.txt<CR>Gdd?<+++><CR>cf>
