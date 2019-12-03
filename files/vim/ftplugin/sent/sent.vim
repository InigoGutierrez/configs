" ~/.vim/ftplugin/sent/sent.vim
" Vim configuration for writing sent presentations

set spell
set textwidth=20
call matchadd('ColorColumn', '\%21v')

nnoremap ,r :w<CR>:!sent % & <CR><CR>
