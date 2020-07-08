" ~/.vim/ftplugin/sh.vim
" Bourne shell scripts specific vim configuration
"
" Linters: sh, shellcheck

call matchadd('ColorColumn', '\%111v', 100)
setlocal textwidth=110

nnoremap <buffer> <leader>C :sp ~/.vim/ftplugin/sh/sh.vim<CR>
nnoremap <buffer> <leader>+x :!chmod 744 %<CR><CR>
nnoremap <buffer> <leader>x :w<CR>:!./%<Space>
nnoremap <buffer> <leader>e :Errors<CR>

inoremap <buffer> <leader>sh #!/bin/sh
inoremap <buffer> <leader>if if <+++>; then<CR><++><CR>fi<++><Esc>?<+++><CR>cf>
"inoremap <buffer> <leader>if <Esc>:read ~/.vim/ftplugin/sh/snippets/if.txt<CR>kdd/<+++><CR>cf>
