#!/bin/bash 

MASS=115
while [  $MASS -lt 146 ]; do
    echo Computing p-value for MH = $MASS
    #combine -n SignifExp -M ProfileLikelihood --signif -m $MASS hgg_8TeV_MVA_cat0145.root -t -1 --expectSignal=1 --toysFreq --pvalue > expsignif$MASS.txt
    combine -n SignifExp -M ProfileLikelihood --signif -m $MASS hgg_8TeV_MVA_cat0145.root -t -1 --expectSignal=1 --pvalue > expsignif$MASS.txt
    combine -n SignifObs -M ProfileLikelihood --signif -m $MASS hgg_8TeV_MVA_cat0145.root --pvalue > obssignif$MASS.txt
    let MASS=MASS+1 
done

mv higgsCombineSignif*.root results_hgg_pvalue/                                                                                  
mv *signif*.txt results_hgg_pvalue/     
