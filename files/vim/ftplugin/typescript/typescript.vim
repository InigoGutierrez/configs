" ~/.vim/ftplugin/typescript/typescript.vim
" TypeScript-specific vim configuration

" ALE
"let b:ale_linters = ['eslint']

" Tabs are expanded to 4 spaces
setlocal tabstop=4 shiftwidth=4 expandtab
" Show existing tabs (they can be deleted with :retab)
setlocal list

" Column marker: 110 characters
call matchadd('ColorColumn', '\%111v', 100)
setlocal textwidth=110

" Mappings
nnoremap <buffer> <leader>C :sp ~/.vim/ftplugin/typescript/typescript.vim<CR>

nnoremap <buffer> gd :ALEGoToDefinition<CR>
nnoremap <buffer> <Space>h :ALEHover<CR>
nnoremap <buffer> <Space>r :ALERename<CR>
nnoremap <buffer> <Space>fr :ALEFindReferences<CR>

inoremap <buffer> <leader>if if (<+++>) {<CR><++><CR>} <++><Esc>?<+++><CR>cf>
inoremap <buffer> <leader>else else {<CR><+++><CR>}<CR><++><Esc>?<+++><CR>cf>

