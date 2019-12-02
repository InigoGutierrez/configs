" ~/.vim/ftplugin/sh.vim
" Bourne shell scripts specific vim configuration
"
" Linters: sh, shellcheck

call matchadd('ColorColumn', '\%101v', 100)

nnoremap <leader>C :sp ~/.vim/ftplugin/sh/sh.vim<CR>
nnoremap <leader>+x :!chmod 744 %<CR><CR>
nnoremap <leader>x :!./%<Space>
nnoremap <leader>e :Errors<CR>

inoremap <leader>sh #!/bin/sh
inoremap <leader>if if <+++>; then<CR><++><CR>fi<++><Esc>?<+++><CR>cf>
"inoremap <leader>if <Esc>:read ~/.vim/ftplugin/sh/snippets/if.txt<CR>kdd/<+++><CR>cf>
