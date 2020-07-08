" ~/.vim/ftplugin/html/html.vim
" HTML-specific vim configuration
"
" Syntastic linter: tidy

" Tabs are expanded to 2 spaces
setlocal tabstop=2 shiftwidth=2 expandtab
" Show existing tabs (they can be deleted with :retab)
setlocal list

" Column marker: 110 characters
call matchadd('ColorColumn', '\%101v', 100)

let mapleader = " "

nnoremap <buffer> <leader>o :!$BROWSER % &<CR><CR>
nnoremap <buffer> <leader>f :!firefox --new-window % &<CR><CR>
nnoremap <buffer> <leader>C :sp ~/.vim/ftplugin/html/html.vim<CR>
nnoremap <buffer> <leader>e :Errors<CR>

nnoremap <buffer> <leader>temp :-1r ~/.vim/ftplugin/html/snips/template.txt<CR>Gdd?<+++><CR>cf>

let mapleader = ","

" Layout elements
inoremap <buffer> <leader>hheader <header><Enter><Enter></header><Enter><++><Esc>kki
inoremap <buffer> <leader>hnav <nav><Enter><Enter></nav><Enter><++><Esc>kki
inoremap <buffer> <leader>hsection <section><Enter><Enter></section><Enter><++><Esc>kki
inoremap <buffer> <leader>harticle <article><Enter><Enter></article><Enter><++><Esc>kki
inoremap <buffer> <leader>hfooter <footer><Enter><Enter></footer><Enter><++><Esc>kki
inoremap <buffer> <leader>haside <aside><Enter><Enter></aside><Enter><++><Esc>kki
inoremap <buffer> <leader>hdiv <div class=""><Enter><++><Enter></div><Enter><++><Esc>?""<Enter>a

" Headers and paragraphs
inoremap <buffer> <leader>hh1 <h1></h1><Enter><++><Esc>?</h1><Enter>i
inoremap <buffer> <leader>hh2 <h2></h2><Enter><++><Esc>?</h2><Enter>i
inoremap <buffer> <leader>hh3 <h3></h3><Enter><++><Esc>?</h3><Enter>i
inoremap <buffer> <leader>hh4 <h4></h4><Enter><++><Esc>?</h4><Enter>i
inoremap <buffer> <leader>hh5 <h5></h5><Enter><++><Esc>?</h5><Enter>i
inoremap <buffer> <leader>hh6 <h6></h6><Enter><++><Esc>?</h6><Enter>i
inoremap <buffer> <leader>hp <p></p><Enter><++><Esc>?</p><Enter>i

" Text formatting
inoremap <buffer> <leader>hb <b></b><++><Esc>?</b><Enter>i
inoremap <buffer> <leader>hi <i></i><++><Esc>?</i><Enter>i
inoremap <buffer> <leader>hem <em></em><++><Esc>?</em><Enter>i
inoremap <buffer> <leader>hcode <code></code><++><Esc>?</code><Enter>i
inoremap <buffer> <leader>hsub <sub></sub><++><Esc>?</sub><Enter>i
inoremap <buffer> <leader>hsup <sup></sup><++><Esc>?</sup><Enter>i
inoremap <buffer> <leader>hcite <cite></cite><++><Esc>?</cite><Enter>i

" Tables
inoremap <buffer> <leader>htable <table border=""><Enter><caption><++></caption><Enter><thead><Enter><tr><Enter><++><Enter></tr><Enter></thead><Enter><tbody><Enter><++><Enter></tbody><Enter></table><Enter><++><Esc>?""<Enter>a
inoremap <buffer> <leader>htr <tr><Enter><Enter></tr><Enter><++><Esc>kki
inoremap <buffer> <leader>hth <th></th><Enter><++><Esc>?</<Enter>i
inoremap <buffer> <leader>htd <td></td><Enter><++><Esc>?</<Enter>i

" Lists
inoremap <buffer> <leader>hul <ul><Enter><li></li><Enter><++><Enter></ul><Enter><++><Esc>?</l<Enter>i
inoremap <buffer> <leader>hol <ol><Enter><li></li><Enter><++><Enter></ol><Enter><++><Esc>?</l<Enter>i
inoremap <buffer> <leader>hli <li></li><Enter><++><Esc>?</<Enter>i

" Forms
inoremap <buffer> <leader>hform <form><Enter><fieldset><Enter><Enter></fieldset><Enter></form><Enter><++><Esc>3ki
inoremap <buffer> <leader>hfs <fieldset><Enter><Enter></fieldset><Enter><++><Esc>kki
inoremap <buffer> <leader>hlegend <legend></legend><Enter><++><Esc>?</<Enter>i
inoremap <buffer> <leader>hlabel <label><input type="<++>"></label><Enter><++><Esc>?<i<Enter>i

" Media
inoremap <buffer> <leader>ha <a href=""><++></a><Enter><++><Esc>?""<Enter>a
inoremap <buffer> <leader>himg <img src="" alt="<++>"><Enter><++><Esc>?""<Enter>a

" Misc
" Comment a line
nnoremap <buffer> <leader>hc I<!-- <Esc>A --><Esc>0
" Uncomment a line
nnoremap <buffer> <leader>hC 05x/--><Enter>3x0
