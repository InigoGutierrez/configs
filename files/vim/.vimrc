"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|
"

let mapleader = ","

call plug#begin('~/.vim/plugged') "Update with PlugInstall
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/limelight.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'vimwiki/vimwiki'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'Valloric/YouCompleteMe'
"Plug 'OmniSharp/omnisharp-vim'
Plug 'dylanaraps/wal.vim'
call plug#end()

set nocompatible
filetype indent plugin on
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

" Showing tabs
"exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
exec "set listchars=tab:\uBB·,trail:\uB7,nbsp:~"
nnoremap <leader>l :set list!<CR>

" For YouCompleteMe
let g:ycm_auto_trigger = 0
let g:ycm_autoclose_preview_window_after_insertion = 1

" For syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_cs_checkers = ['code_checker']
let g:syntastic_enable_signs = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" For omnisharp
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_path = '/home/taamas/repos/omnisharp-roslyn/artifacts/scripts/OmniSharp.Stdio'
let g:OmniSharp_selector_ui = 'fzf'

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

" Shortcuts for split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
"map <C-H> <C-w>H "<C-H> can't be different from <C-h>
"map <C-J> <C-w>J
"map <C-K> <C-w>K
"map <C-L> <C-w>L

nnoremap <C-n> :tabnew<CR>
"nnoremap <Tab> gt "Can't be set without also remapping <C-i>
"nnoremap <S-Tab> gT

nnoremap <leader>S :!tmux split-window -p 40<CR><CR>

nnoremap <leader>/ /grtfjx<CR>
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
nnoremap <leader>ss :set spell!<CR>
nnoremap <leader>sl :set spelllang=
nnoremap <leader>sL :setlocal spelllang=
nnoremap <leader>e :Errors<Enter>
nnoremap <leader>x :w<CR>:! ./%
inoremap <leader>w <Esc>:w<Enter>
inoremap <leader><leader> <Esc>/<++><Enter>cf>
nnoremap <leader>p "+p
nnoremap <leader>y "+yy
vnoremap <leader>y "+y
nnoremap <leader>d "+dd
vnoremap <leader>d "+d

nnoremap <leader>G :Goyo \| set linebreak<CR>

" For LimeLight
let g:limelight_conceal_ctermfg = 7

"" git
nnoremap <leader>gs :!git status<CR>
"nnoremap <leader>gpull :!git pull<CR>
nnoremap <leader>ga :!git add %<CR>
nnoremap <leader>gp :!git push<CR>
nnoremap <leader>gc :!git commit -m "

"" c++
"nnoremap <leader>ct <Esc>:r ~/.config/custom/vim/c/template.txt<CR>/<+++><CR>cf>
"nnoremap <leader>ce <Esc>:r ~/.config/custom/vim/c/enum.txt<CR>/<+++><CR>cf>
"nnoremap <leader>cf <Esc>:r ~/.config/custom/vim/c/for.txt<CR>/<+++><CR>cf>
"nnoremap <leader>cif <Esc>:r ~/.config/custom/vim/c/if.txt<CR>/<+++><CR>cf>
"nnoremap <leader>celse <Esc>:r ~/.config/custom/vim/c/else.txt<CR>/<+++><CR>cf>
"nnoremap <leader>celif <Esc>:r ~/.config/custom/vim/c/elif.txt<CR>/<+++><CR>cf>
"nnoremap <leader>cs <Esc>:r ~/.config/custom/vim/c/switch.txt<CR>/<+++><CR>cf>
"nnoremap <leader>cw <Esc>:r ~/.config/custom/vim/c/while.txt<CR>/<+++><CR>cf>
"nnoremap <leader>cd <Esc>:r ~/.config/custom/vim/c/do.txt<CR>/<+++><CR>cf>
