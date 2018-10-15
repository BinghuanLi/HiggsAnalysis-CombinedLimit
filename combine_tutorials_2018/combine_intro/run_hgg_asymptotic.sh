#!/bin/bash 
MASS=115
while [  $MASS -lt 146 ]; do
    echo Running Asymptotic limits for MH = $MASS
    combine -n LimitTest -M Asymptotic -m $MASS hgg_8TeV_MVA_cat0145.root --run both > limit$MASS.txt
    let MASS=MASS+1 
done

mv higgsCombineLimitTest*.root results_hgg_asymptotic/
mv limit*.txt results_hgg_asymptotic/

