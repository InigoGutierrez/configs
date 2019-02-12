"       _
"__   _(_)_ __ ___  _ __ ___
"\ \ / / | '_ ` _ \| '__/ __|
" \ V /| | | | | | | | | (__
"  \_/ |_|_| |_| |_|_|  \___|
"
" Inspired by https://github.com/LukeSmithxyz/voidrice/blob/master/.vimrc

let mapleader = ","
call plug#begin('~/.vim/plugged') "Update with PlugInstall
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/ReplaceWithRegister'
call plug#end()

set nocompatible
filetype plugin indent on
set encoding=utf-8
set number relativenumber
set scrolloff=3
set wildmode=longest,list,full
set splitbelow
set splitright

" Shortcuts for split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
"map <C-H> <C-w>H
"map <C-J> <C-w>J
"map <C-K> <C-w>K
"map <C-L> <C-w>L

" Make tabs appear as 4 spaces (default is 8)
set tabstop=4

" Color

syntax enable
syntax on

"Clean trailing whitespaces on save
autocmd BufWritePre * %s/\s\+$//e

" Autoupdate ~/.Xresources
autocmd BufWritePost ~/.Xresources !xrdb %
autocmd BufWritePost ~/.config/qutebrowser/config.py !cat .config/qutebrowser/config.py | grep -e \'.*\':\ \'.*{}.*\' | grep -v DEFAULT | sed 's/,//' | sed 's/^\ *//' > ~/.mainpage/urls

""" Remaps """

nnoremap Y y$
nnoremap zh zt
nnoremap zl zb
inoremap <leader>e <Esc>
inoremap <leader>w <Esc>:w<Enter>
inoremap <leader>d <Esc>ddA
inoremap <leader><leader> <Esc>/<++><Enter>cf>
nnoremap <leader>p "+p
nnoremap <leader>y "+yy
vnoremap <leader>y "+y
nnoremap <leader>d "+dd
vnoremap <leader>d "+d

map <leader>g :Goyo \| set linebreak<CR>
map <leader>s :!clear && shellcheck %<CR>

"" html

" Layout elements
inoremap <leader>hheader <header><Enter><Enter></header><Enter><++><Esc>kki
inoremap <leader>hnav <nav><Enter><Enter></nav><Enter><++><Esc>kki
inoremap <leader>hsection <section><Enter><Enter></section><Enter><++><Esc>kki
inoremap <leader>harticle <article><Enter><Enter></article><Enter><++><Esc>kki
inoremap <leader>hfooter <footer><Enter><Enter></footer><Enter><++><Esc>kki
inoremap <leader>haside <aside><Enter><Enter></aside><Enter><++><Esc>kki
inoremap <leader>hdiv <div class=""><Enter><++><Enter></div><Enter><++><Esc>?""<Enter>a

" Headers and paragraphs
inoremap <leader>hh1 <h1></h1><Enter><++><Esc>?</h1><Enter>i
inoremap <leader>hh2 <h2></h2><Enter><++><Esc>?</h2><Enter>i
inoremap <leader>hh3 <h3></h3><Enter><++><Esc>?</h3><Enter>i
inoremap <leader>hh4 <h4></h4><Enter><++><Esc>?</h4><Enter>i
inoremap <leader>hh5 <h5></h5><Enter><++><Esc>?</h5><Enter>i
inoremap <leader>hh6 <h6></h6><Enter><++><Esc>?</h6><Enter>i
inoremap <leader>hp <p></p><Enter><++><Esc>?</p><Enter>i

" Text formatting
inoremap <leader>hb <b></b><++><Esc>?</b><Enter>i
inoremap <leader>hi <i></i><++><Esc>?</i><Enter>i
inoremap <leader>hem <em></em><++><Esc>?</em><Enter>i
inoremap <leader>hcode <code></code><++><Esc>?</code><Enter>i
inoremap <leader>hsub <sub></sub><++><Esc>?</sub><Enter>i
inoremap <leader>hsup <sup></sup><++><Esc>?</sup><Enter>i
inoremap <leader>hcite <cite></cite><++><Esc>?</cite><Enter>i

" Tables
inoremap <leader>htable <table border=""><Enter><caption><++></caption><Enter><thead><Enter><tr><Enter><++><Enter></tr><Enter></thead><Enter><tbody><Enter><++><Enter></tbody><Enter></table><Enter><++><Esc>?""<Enter>a
inoremap <leader>htr <tr><Enter><Enter></tr><Enter><++><Esc>kki
inoremap <leader>hth <th></th><Enter><++><Esc>?</<Enter>i
inoremap <leader>htd <td></td><Enter><++><Esc>?</<Enter>i

" Lists
inoremap <leader>hul <ul><Enter><li></li><Enter><++><Enter></ul><Enter><++><Esc>?</l<Enter>i
inoremap <leader>hol <ol><Enter><li></li><Enter><++><Enter></ol><Enter><++><Esc>?</l<Enter>i
inoremap <leader>hli <li></li><Enter><++><Esc>?</<Enter>i

" Forms
inoremap <leader>hform <form><Enter><fieldset><Enter><Enter></fieldset><Enter></form><Enter><++><Esc>3ki
inoremap <leader>hfs <fieldset><Enter><Enter></fieldset><Enter><++><Esc>kki
inoremap <leader>hlegend <legend></legend><Enter><++><Esc>?</<Enter>i
inoremap <leader>hlabel <label><input type="<++>"></label><Enter><++><Esc>?<i<Enter>i

" Media
inoremap <leader>ha <a href=""><++></a><Enter><++><Esc>?""<Enter>a
inoremap <leader>himg <img src="" alt="<++>"><Enter><++><Esc>?""<Enter>a

" Misc
" Comment a line
nnoremap <leader>hc I<!-- <Esc>A --><Esc>0
" Uncomme<leader>t a line
nnoremap <leader>hC 05x/--><Enter>3x0

""" RangerChooser
function! RangeChooser()
    let temp = tempname()
    " The option "--choosefiles" was added in ranger 1.5.1. Use the next line
    " with ranger 1.4.2 through 1.5.0 instead.
    "exec 'silent !ranger --choosefile=' . shellescape(temp)
    if has("gui_running")
        exec 'silent !xterm -e ranger --choosefiles=' . shellescape(temp)
    else
        exec 'silent !ranger --choosefiles=' . shellescape(temp)
    endif
    if !filereadable(temp)
        redraw!
        " Nothing to read.
        return
    endif
    let names = readfile(temp)
    if empty(names)
        redraw!
        " Nothing to open.
        return
    endif
    " Edit the first item.
    exec 'edit ' . fnameescape(names[0])
    " Add any remaning items to the arg list/buffer list.
    for name in names[1:]
        exec 'argadd ' . fnameescape(name)
    endfor
    redraw!
endfunction
command! -bar RangerChooser call RangeChooser()
nnoremap <leader>r :<C-U>RangerChooser<CR>
