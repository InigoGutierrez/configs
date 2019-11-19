" ~/.vim/ftplugin/tex.vim
" LaTeX-specific vim configuration

" Syntastic linters: chktex, lacheck, proselint

call matchadd('ColorColumn', '\%91v', 100)

nnoremap <leader>c :sp ~/.vim/ftplugin/tex.vim<CR>
nnoremap <leader>e :Errors<CR>
" proselint not enabled by default (and better not be)
nnoremap <leader>sp :SyntasticCheck proselint<CR>

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
