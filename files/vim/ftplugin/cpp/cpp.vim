" ~/.vim/ftplugin/cpp/cpp.vim
" C++-specific vim configuration

let mapleader = " "

" Column marker: 80 characters
match ColorColumn /\%81v/
setlocal textwidth=80

nnoremap <buffer> <leader>C :sp ~/.vim/ftplugin/cpp/cpp.vim<CR>
nnoremap <buffer> <leader>E :Errors<CR>

nnoremap <buffer> <leader>c :w<CR>:!g++ "%"; ./a.out<Space>

nnoremap <buffer> gd :YcmCompleter GoTo<CR>
nnoremap <buffer> gr :YcmCompleter GoToReferences<CR>
nnoremap <buffer> gh :YcmCompleter GetType<CR>
nnoremap <buffer> gD :YcmCompleter GetDoc<CR>
nnoremap <buffer> gR :YcmCompleter RefactorRename<Space>
nnoremap <buffer> <leader>fi :YcmCompleter FixIt<CR>
nnoremap <buffer> <leader>e :YcmDiags<CR>

nnoremap <buffer> <leader>temp :-1r ~/.vim/ftplugin/cpp/snips/template.txt<CR>Gdd?<+++><CR>cf>

let mapleader = ","

inoremap <buffer> <leader>if if (<+++>) {<CR><++><CR>}?<+++><CR>cf>
inoremap <buffer> <leader>for for (<+++>; <++>; <++>) {<CR><++><CR>}?<+++><CR>cf>
