$pdf_mode = 5;
$xelatex = 'xelatex -file-line-error -halt-on-error -interaction=nonstopmode -no-pdf -synctex=1 %O %S';
$xdvipdfmx = 'xdvipdfmx -E -o %D %O %S';
$postscript_mode = $dvi_mode = 0;
$clean_ext = 'aux bbl equ glo gls hd idx ilg ind lof lot out blg log thm toc synctex.gz lofEN lotEN equEN etoc nav snm vrb xdv';
$makeindex = 'zhmakeindex -s gind.ist %O -o %D %S';
add_cus_dep('glo', 'gls', 0, 'makeglo2gls');
sub makeglo2gls {
    system("zhmakeindex -s gglo.ist -o \"$_[0].gls\" \"$_[0].glo\"");
}
