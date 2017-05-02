jobname=thesis
./clean.sh

rm $jobname.pdf

#pdflatex ./$jobname.tex    
xelatex ./$jobname.tex    
makeindex -s $jobname.ist -t $jobname.glg -o $jobname.gls $jobname.glo
makeindex -s $jobname.ist -t $jobname.glg -o $jobname.gls $jobname.glo
makeindex -s $jobname.ist -t $jobname.alg -o $jobname.acr $jobname.acn
bibtex ./$jobname.aux
#bibtex ./publications.aux

#pdflatex ./$jobname.tex   
xelatex ./$jobname.tex   
makeindex -s $jobname.ist -t $jobname.glg -o $jobname.gls $jobname.glo
makeindex -s $jobname.ist -t $jobname.alg -o $jobname.acr $jobname.acn
#pdflatex ./$jobname.tex   
xelatex ./$jobname.tex   
./clean.sh

clear
echo ****************************************************************************
echo 编译完成！
echo ****************************************************************************
