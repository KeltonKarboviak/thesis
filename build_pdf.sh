pdflatex main
bibtex main
makeindex main
makeindex main.nlo -s nomencl.ist -o main.nls
pdflatex main
pdflatex main

rm main.aux
rm main.bbl
rm main.blg
rm main.ilg
rm main.lof
rm main.log
rm main.lot
rm main.nlo
rm main.nls
rm main.out
rm main.toc

