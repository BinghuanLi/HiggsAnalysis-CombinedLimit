#!/bin/bash

combine -M AsymptoticLimits -m 125 simple-counting-experiment.root

combineTool.py -M HybridNew -d simple-counting-experiment.root --LHCmode LHC-limits --clsAcc 0 -s -1 -m 125 -T 50000 --saveHybridResult --singlePoint 0.2:2.2:0.1 --parallel 8

hadd -f grid.root higgsCombine.Test.POINT.*.HybridNew.mH125.*.root

echo "Observed"
combine -M HybridNew -m 125 --LHCmode LHC-limits simple-counting-experiment.root -T 50000 --readHybridResults --grid grid.root --plot cls_fromgrid.pdf 
echo "Expected 0.025"
combine -M HybridNew -m 125 --LHCmode LHC-limits simple-counting-experiment.root -T 50000 --readHybridResults --grid grid.root --plot cls_fromgrid_exp025.pdf --expectedFromGrid 0.025
echo "Expected 0.16"
combine -M HybridNew -m 125 --LHCmode LHC-limits simple-counting-experiment.root -T 50000 --readHybridResults --grid grid.root --plot cls_fromgrid_exp16.pdf --expectedFromGrid 0.16
echo "Expected 0.50"
combine -M HybridNew -m 125 --LHCmode LHC-limits simple-counting-experiment.root -T 50000 --readHybridResults --grid grid.root --plot cls_fromgrid_exp50.pdf --expectedFromGrid 0.50
echo "Expected 0.84"
combine -M HybridNew -m 125 --LHCmode LHC-limits simple-counting-experiment.root -T 50000 --readHybridResults --grid=grid.root --plot cls_fromgrid_exp84.pdf --expectedFromGrid 0.84
echo "Expected 0.975"
combine -M HybridNew -m 125 --LHCmode LHC-limits simple-counting-experiment.root -T 50000 --readHybridResults --grid grid.root --plot cls_fromgrid_exp975.pdf --expectedFromGrid 0.975


python $CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/test/plotTestStatCLs.py -i grid.root -o cls84.root -p r -v all -m 125 -e -q 0.5
