" From "How to Install, Use and Extend LaTeX" https://youtu.be/NwnYHoNtfJ0
execute pathogen#infect()
filetype plugin indent on

" From above video, line number config
set number
set relativenumber

" Make tabs appear as 4 spaces (default is 8)
set tabstop=4

" Color

syntax enable
syntax on

""" Remaps """
inoremap ,, <Esc>/<++><Enter>cf>
inoremap ,e <Esc>
inoremap ,w <Esc>:w<Enter>
inoremap ,d <Esc>ddA
nnoremap ,p "+p
vnoremap ,y "+y
vnoremap ,d "+d

"" html

" Layout elements
inoremap ,hheader <header><Enter><Enter></header><Enter><++><Esc>kki
inoremap ,hnav <nav><Enter><Enter></nav><Enter><++><Esc>kki
inoremap ,hsection <section><Enter><Enter></section><Enter><++><Esc>kki
inoremap ,harticle <article><Enter><Enter></article><Enter><++><Esc>kki
inoremap ,hfooter <footer><Enter><Enter></footer><Enter><++><Esc>kki
inoremap ,haside <aside><Enter><Enter></aside><Enter><++><Esc>kki
inoremap ,hdiv <div class=""><Enter><++><Enter></div><Enter><++><Esc>?""<Enter>a

" Headers and paragraphs
inoremap ,hh1 <h1></h1><Enter><++><Esc>?</h1><Enter>i
inoremap ,hh2 <h2></h2><Enter><++><Esc>?</h2><Enter>i
inoremap ,hh3 <h3></h3><Enter><++><Esc>?</h3><Enter>i
inoremap ,hh4 <h4></h4><Enter><++><Esc>?</h4><Enter>i
inoremap ,hh5 <h5></h5><Enter><++><Esc>?</h5><Enter>i
inoremap ,hh6 <h6></h6><Enter><++><Esc>?</h6><Enter>i
inoremap ,hp <p></p><Enter><++><Esc>?</p><Enter>i

" Text formatting
inoremap ,hb <b></b><++><Esc>?</b><Enter>i
inoremap ,hi <i></i><++><Esc>?</i><Enter>i
inoremap ,hem <em></em><++><Esc>?</em><Enter>i
inoremap ,hcode <code></code><++><Esc>?</code><Enter>i
inoremap ,hsub <sub></sub><++><Esc>?</sub><Enter>i
inoremap ,hsup <sup></sup><++><Esc>?</sup><Enter>i
inoremap ,hcite <cite></cite><++><Esc>?</cite><Enter>i

" Tables
inoremap ,htable <table border=""><Enter><caption><++></caption><Enter><thead><Enter><tr><Enter><++><Enter></tr><Enter></thead><Enter><tbody><Enter><++><Enter></tbody><Enter></table><Enter><++><Esc>?""<Enter>a
inoremap ,htr <tr><Enter><Enter></tr><Enter><++><Esc>kki
inoremap ,hth <th></th><Enter><++><Esc>?</<Enter>i
inoremap ,htd <td></td><Enter><++><Esc>?</<Enter>i

" Lists
inoremap ,hul <ul><Enter><li></li><Enter><++><Enter></ul><Enter><++><Esc>?</l<Enter>i
inoremap ,hol <ol><Enter><li></li><Enter><++><Enter></ol><Enter><++><Esc>?</l<Enter>i
inoremap ,hli <li></li><Enter><++><Esc>?</<Enter>i

" Forms
inoremap ,hform <form><Enter><fieldset><Enter><Enter></fieldset><Enter></form><Enter><++><Esc>3ki
inoremap ,hfs <fieldset><Enter><Enter></fieldset><Enter><++><Esc>kki
inoremap ,hlegend <legend></legend><Enter><++><Esc>?</<Enter>i
inoremap ,hlabel <label><input type="<++>"></label><Enter><++><Esc>?<i<Enter>i

" Media
inoremap ,ha <a href=""><++></a><Enter><++><Esc>?""<Enter>a
inoremap ,himg <img src="" alt="<++>"><Enter><++><Esc>?""<Enter>a

" Misc
" Comment a line
nnoremap ,hc I<!-- <Esc>A --><Esc>0
" Uncomment a line
nnoremap ,hC 05x/--><Enter>3x0
