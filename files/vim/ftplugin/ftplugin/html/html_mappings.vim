" ~/.vim/ftplugin/html/html_mappings.vim
" HTML-specific vim mappings

nnoremap <leader>o :!$BROWSER % &<CR><CR>
nnoremap <leader>f :!firefox --new-window % &<CR><CR>
nnoremap <leader>cc :sp ~/.vim/ftplugin/html.vim<CR>
nnoremap <leader>cm :sp ~/.vim/ftplugin/html_mappings.vim<CR>
nnoremap <leader>e :Errors<CR>

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

