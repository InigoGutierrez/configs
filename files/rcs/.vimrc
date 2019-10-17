"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|
"
" Inspired by https://github.com/LukeSmithxyz/voidrice/blob/master/.vimrc

let mapleader = ","

call plug#begin('~/.vim/plugged') "Update with PlugInstall
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'vimwiki/vimwiki'
Plug 'suan/vim-instant-markdown'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'Valloric/YouCompleteMe'
call plug#end()

set nocompatible
filetype plugin indent on
set encoding=utf-8
set number relativenumber
set tabstop=4
set shiftwidth=4
set scrolloff=2
set wildmode=longest,list,full
set splitbelow
set splitright
set vb " No bell
" Searching
set ignorecase
set wrapscan
set incsearch

" Line size marking
highlight ColorColumn ctermbg=darkblue ctermfg=black
call matchadd('ColorColumn', '\%81v', 100)
"Redjail Bomb (thx Damian Conway!)
"highlight ColorColumn ctermbg=red ctermfg=blue
"exec 'set colorcolumn='.join(range(2,80,3), ',')

" hlnext: Highlighting searches
nnoremap <silent> n n:call HLNext(0.1)<CR>
nnoremap <silent> N N:call HLNext(0.1)<CR>
function! HLNext(blinktime)
	set invcursorline
	redraw
	exec 'sleep'.float2nr(a:blinktime*1000).'m'
	set invcursorline
	redraw
endfunction

" dragvisuals: dragging visual blocks
vmap  <expr>  <LEFT>   DVB_Drag('left')
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down')
vmap  <expr>  <UP>     DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()

" Show tabs
"exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
exec "set listchars=tab:\uBB·,trail:\uB7,nbsp:~"
nnoremap <leader>t :set list!<CR>

" For syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs = 1
let g:systastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" For cursor shape with tmux
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
else
    let &t_SI = "\e[5 q"
    let &t_EI = "\e[2 q"
endif

"if empty($TMUX)
"  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
"  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
"else
"  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
"endif

"if &term =~ '^screen'
"  " tmux will send xterm-style keys when its xterm-keys option is on
"  execute "set <xUp>=\e[1;*A"
"  execute "set <xDown>=\e[1;*B"
"  execute "set <xRight>=\e[1;*C"
"  execute "set <xLeft>=\e[1;*D"
"endif

" For vim-airline
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_symbols.linenr = '🔃'
let g:airline_symbols.maxlinenr = '↩'

" For vimwiki
" filetype plugin on
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
let g:vimwiki_list = [{'path': '~/vimwiki/',
                     \ 'syntax': 'markdown', 'ext': '.md'}]

" For vim-instant-markdown
" Dependencies: xdg-utils, curl, nodejs
" Install miniserver with: npm -g install instant-markdown-d
let g:instant_markdown_autostart = 0
map <leader>md :InstantMarkdownPreview<CR>
map <leader>mD :InstantMarkdownStop<CR>

" Shortcuts for split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
"map <C-H> <C-w>H
"map <C-J> <C-w>J
"map <C-K> <C-w>K
"map <C-L> <C-w>L

" Color
syntax enable
syntax on

"Clean trailing whitespaces on save
autocmd BufWritePre * %s/\s\+$//e

" Autoupdate ~/.Xresources
autocmd BufWritePost ~/.Xresources !xrdb %

" Generate ~/.mainpage/urls on ~/.config/qutebrowser save
autocmd BufWritePost ~/.config/qutebrowser/config.py !cat .config/qutebrowser/config.py | grep -e \'.*\':\ \'.*{}.*\' | grep -v DEFAULT | sed 's/,//' | sed 's/^\ *//' > ~/.mainpage/urls

""" Remaps """

nnoremap Y y$
nnoremap zh zt
nnoremap zl zb
nnoremap <leader>s :set spell!<CR>
nnoremap <leader>e :Errors<Enter>
nnoremap <leader>x :! ./%
inoremap <leader>e <Esc>
inoremap <leader>w <Esc>:w<Enter>
inoremap <leader>d <Esc>ddA
inoremap <leader><leader> <Esc>/<++><Enter>cf>
nnoremap <leader>p "+p
nnoremap <leader>y "+yy
vnoremap <leader>y "+y
nnoremap <leader>d "+dd
vnoremap <leader>d "+d

nnoremap <leader>G :Goyo \| set linebreak<CR>

"" git
nnoremap <leader>gs :!git status<CR>
"nnoremap <leader>gpull :!git pull<CR>
nnoremap <leader>ga :!git add %<CR>
nnoremap <leader>gp :!git push<CR>
nnoremap <leader>gc :!git commit -m "

"" c++
nnoremap <leader>ct <Esc>:r ~/.config/custom/vim/c/template.txt<CR>/<+++><CR>cf>
nnoremap <leader>ce <Esc>:r ~/.config/custom/vim/c/enum.txt<CR>/<+++><CR>cf>
nnoremap <leader>cf <Esc>:r ~/.config/custom/vim/c/for.txt<CR>/<+++><CR>cf>
nnoremap <leader>cif <Esc>:r ~/.config/custom/vim/c/if.txt<CR>/<+++><CR>cf>
nnoremap <leader>celse <Esc>:r ~/.config/custom/vim/c/else.txt<CR>/<+++><CR>cf>
nnoremap <leader>celif <Esc>:r ~/.config/custom/vim/c/elif.txt<CR>/<+++><CR>cf>
nnoremap <leader>cs <Esc>:r ~/.config/custom/vim/c/switch.txt<CR>/<+++><CR>cf>
nnoremap <leader>cw <Esc>:r ~/.config/custom/vim/c/while.txt<CR>/<+++><CR>cf>
nnoremap <leader>cd <Esc>:r ~/.config/custom/vim/c/do.txt<CR>/<+++><CR>cf>

nnoremap <leader>fixit :YcmCompleter FixIt<CR>

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
" Uncomment a line
nnoremap <leader>hC 05x/--><Enter>3x0

"" LaTeX

nnoremap <leader>lc :w<Enter>:! pdflatex --shell-escape %<Enter>
inoremap <leader>ldocclass \documentclass{}<Esc>o<++><Esc>k$i
inoremap <leader>lpckg \usepackage{}<Esc>o<++><Esc>k$i
inoremap <leader>lbdoc \begin{document}<Esc>o<Enter><Enter><Enter>\end{document}<Esc>kkI
inoremap <leader>lauthor \author{}<Esc>o<++><Esc>k$i
inoremap <leader>ltitle \title{}<Esc>o<++><Esc>k$i
inoremap <leader>lsection \section{}<Esc>o<++><Esc>k$i
inoremap <leader>lssection \subsection{}<Esc>o<++><Esc>k$i
inoremap <leader>lsssection \subsubsection{}<Esc>o<++><Esc>k$i
inoremap <leader>lssssection \paragraph{}<Esc>o<++><Esc>k$i
inoremap <leader>lsssssection \subparagraph{}<Esc>o<++><Esc>k$i
inoremap <leader>lb \textbf{}<++><Esc>F}i
inoremap <leader>li \textit{}<++><Esc>F}i
inoremap <leader>lemph \emph{}<++><Esc>F}i
inoremap <leader>llabel \label{}<++><Esc>F}i
inoremap <leader>lref ~\ref{}<++><Esc>F}i
inoremap <leader>lenumerate \begin{enumerate}<Esc>o<Enter><Enter><Enter>\end{enumerate}<Esc>kkI\item<Enter><Esc>I<Tab><++><Esc>k<<i<Tab><Esc>$a<Space>
inoremap <leader>litemize \begin{itemize}<Esc>o<Enter><Enter><Enter>\end{itemize}<Esc>kkI\item<Enter><Esc>I<Tab><++><Esc>k<<i<Tab><Esc>$a<Space>
inoremap <leader>litem \item<Enter><++><Esc>k$a<Space>
inoremap <leader>limage \begin{figure}[H]<Enter>\begin{center}<Enter>\includegraphics[width=\textwidth]{}<Enter>\caption{<++>}<Enter>\end{center}<Enter>\end{figure}<Enter><++><Esc>4k$i
inoremap <leader>ltable \begin{table}[H]<Enter>\makebox[\linewidth]{\centering<Enter>\centering<Enter>\begin{tabular}{c<Space>cxxx}<Enter>\toprule<Enter><++><Space>&<Space><++><Space>\\<Enter>\midrule<Enter><++><Space>&<Space><++><Space>\\<Enter>\bottomrule<Enter>\end{tabular}<Enter>}<Enter>\end{table}<Enter><++><Esc>?xxx<Enter>cw

