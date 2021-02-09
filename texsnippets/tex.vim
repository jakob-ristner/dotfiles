" LaTeX Snippets
    inoremap ,mm \[<++>\]<++><Esc>2F\
    inoremap ,mi \(<++>\)<++><Esc>2F\
    inoremap ,em \emph{}<Esc>F{a
    inoremap ,bo \textbf{}<Esc>F{a
    inoremap ,un \underline{}<Esc>F{a
    inoremap ,sn \section{}<Esc>F{a
    inoremap ,ssn \subsection{}<Esc>F{a
    inoremap ,/ \frac{<++>}{<++>}<Esc>2F{a
    inoremap ,ol \begin{enumerate}<CR>
                \\item <++><CR>
                \\end{enumerate}<Esc>kk0
    inoremap ,al \begin{enumerate}[label=(\alph*)]<CR>
                \\item <++><CR>
                \\end{enumerate}<Esc>kk0
    inoremap ,ul \begin{itemize}<CR>
                \\item <++><CR>
                \\end{itemize}<Esc>kk0
    inoremap ,li \item
    inoremap ,tt \texttt{}<Esc>F{a
    inoremap ,it \textit{}<Esc>F{a
    inoremap ,indent \hspace{\parindent}

" math
    inoremap ,sigma \sigma
    inoremap ,Sigma \Sigma
    inoremap ,all \forall
    inoremap ,in \in
    inoremap ,nn \mathbb{N}
    inoremap ,delta \delta
    inoremap ,dhat \hat\delta
    inoremap ,. \cdot
    inoremap ,x \times
    inoremap ,impl \implies
    inoremap ,to \to
    inoremap ,set \{\}<Left><Left>

    inoremap ,prob \Problem
    inoremap ,asol \ASolution
    inoremap ,sol \TheSolution
    

    inoremap ,vb \begin{verbatim} <++> \end{verbatim}

" automotas
    inoremap ,trtab \begin{table}[h!]<CR>
\\centering<CR>
\\begin{tabular}{c c<++>}<CR>
\\end{tabular}<CR>
\\end{table}

    inoremap ,2tb &&\textbf{<++>}&\textbf{<++>}\\ [0.5ex]<CR>
\$\to$ & $<++>$ & $<++>$ & $<++>$\\<CR>
\& $<++>$ & $<++>$ & $<++>$\\<CR>
\*     & $<++>$ & $<++>$ & $<++>$<CR>


    inoremap ,3tb &&\textbf{<++>}&\textbf{<++>}&\textbf{<++>}\\ [0.5ex]<CR>
\$\to$ & $<++>$ & $<++>$ & $<++>$ & $<++>$\\<CR>
\& $<++>$ & $<++>$ & $<++>$ & $<++>$\\<CR>
\*     & $<++>$ & $<++>$ & $<++>$ & $<++>$<CR>

    inoremap ,4tb &&\textbf{<++>}&\textbf{<++>}&\textbf{<++>}&\textbf{<++>}\\ [0.5ex]<CR>
\$\to$ & $<++>$ & $<++>$ & $<++>$ & $<++>$ & $<++>$\\<CR>
\& $<++>$ & $<++>$ & $<++>$ & $<++>$ & $<++>$\\<CR>
\*     & $<++>$ & $<++>$ & $<++>$ & $<++>$ & $<++>$<CR>

" LaTeX Templates
    command LatexStandardTemplate :normal i
        \\documentclass[a4paper, 12pt]{article}<CR>
        \\usepackage{amsmath}<CR>
        \\usepackage{amsfonts}<CR>
        \\usepackage[utf8]{inputenc}<CR>
        \\title{<++>}<CR>
        \\author{<++>}<CR>
        \\begin{document}<CR>
        \\date{<++>}<CR>
        \<++><CR>
        \\end{document}<CR>
        \ <Esc>gg0
