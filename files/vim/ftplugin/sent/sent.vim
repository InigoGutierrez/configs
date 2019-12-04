" ~/.vim/ftplugin/sent/sent.vim
" Vim configuration for writing sent presentations

call matchadd('ColorColumn', '\%21v')
setlocal textwidth=20

setlocal spell

nnoremap ,r :w<CR>:!sent % & <CR><CR>
