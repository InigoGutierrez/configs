" ~/.vim/ftplugin/tex.vim
" LaTeX-specific vim configuration

" Syntastic linters: chktex, lacheck, proselint

call matchadd('ColorColumn', '\%91v', 100)
setlocal textwidth=80

nnoremap <buffer> <leader>C :sp ~/.vim/ftplugin/tex/tex.vim<CR>
nnoremap <buffer> <leader>e :Errors<CR>
" proselint not enabled by default (it's slow)
"nnoremap <buffer> <leader>sp :SyntasticCheck proselint<CR>

nnoremap <buffer> <leader>c :w<Enter>:! toPDF.sh %<CR>
nnoremap <buffer> <leader>o :w<Enter>:! toPDF.sh -o %<CR><CR>

nnoremap <buffer> <leader>temp :-1r ~/.vim/ftplugin/tex/snips/template.txt<CR>/<+++><CR>cf>

inoremap <buffer> <leader>ldocclass \documentclass{}<Esc>o<++><Esc>k$i
inoremap <buffer> <leader>lpckg \usepackage{}<Esc>o<++><Esc>k$i
inoremap <buffer> <leader>lbdoc \begin{document}<Esc>o<Enter><Enter><Enter>\end{document}<Esc>kkI
inoremap <buffer> <leader>lauthor \author{}<Esc>o<++><Esc>k$i
inoremap <buffer> <leader>ltitle \title{}<Esc>o<++><Esc>k$i
inoremap <buffer> <leader>lsection \section{}<Esc>o<++><Esc>k$i
inoremap <buffer> <leader>lssection \subsection{}<Esc>o<++><Esc>k$i
inoremap <buffer> <leader>lsssection \subsubsection{}<Esc>o<++><Esc>k$i
inoremap <buffer> <leader>lssssection \paragraph{}<Esc>o<++><Esc>k$i
inoremap <buffer> <leader>lsssssection \subparagraph{}<Esc>o<++><Esc>k$i
inoremap <buffer> <leader>lb \textbf{}<++><Esc>F}i
inoremap <buffer> <leader>li \textit{}<++><Esc>F}i
inoremap <buffer> <leader>lemph \emph{}<++><Esc>F}i
inoremap <buffer> <leader>llabel \label{}<++><Esc>F}i
inoremap <buffer> <leader>lref ~\ref{}<++><Esc>F}i
inoremap <buffer> <leader>lenumerate \begin{enumerate}<Esc>o<Enter><Enter><Enter>\end{enumerate}<Esc>kkI\item<Enter><Esc>I<Tab><++><Esc>k<<i<Tab><Esc>$a<Space>
inoremap <buffer> <leader>litemize \begin{itemize}<Esc>o<Enter><Enter><Enter>\end{itemize}<Esc>kkI\item<Enter><Esc>I<Tab><++><Esc>k<<i<Tab><Esc>$a<Space>
inoremap <buffer> <leader>litem \item<Enter><++><Esc>k$a<Space>
inoremap <buffer> <leader>limage \begin{figure}[H]<Enter>\begin{center}<Enter>\includegraphics[width=\textwidth]{}<Enter>\caption{<++>}<Enter>\end{center}<Enter>\end{figure}<Enter><++><Esc>4k$i
inoremap <buffer> <leader>ltable \begin{table}[H]<Enter>\makebox[\linewidth]{\centering<Enter>\centering<Enter>\begin{tabular}{c<Space>cxxx}<Enter>\toprule<Enter><++><Space>&<Space><++><Space>\\<Enter>\midrule<Enter><++><Space>&<Space><++><Space>\\<Enter>\bottomrule<Enter>\end{tabular}<Enter>}<Enter>\end{table}<Enter><++><Esc>?xxx<Enter>cw
