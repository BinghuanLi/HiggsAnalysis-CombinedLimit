#!/bin/bash

ulimit -s unlimited

#curl -s https://raw.githubusercontent.com/cms-analysis/CombineHarvester/master/CombineTools/scripts/sparse-checkout-https.sh > sparse-checkout-https.sh
#chmod u+x sparse-checkout-https.sh
#./sparse-checkout-https.sh
#scram b -j 8
#cd HiggsAnalysis/CombinedLimit/combine_tutorials_2018/htt_slim/
#source /cvmfs/cms.cern.ch/cmsset_default.csh
#cmsenv
#source /cvmfs/cms.cern.ch/crab3/crab.sh
#voms-proxy-init -voms cms

# OBSERVED 
username=$(whoami)
echo $username

if [ $1 -eq "0" ]; then
echo "convert the datacard to a binary workspace"
echo "text2workspace.py -m 125 comb_2017_htt_slim.txt -o comb_2017_htt_slim.root --channel-masks"
text2workspace.py -m 125 comb_2017_htt_slim.txt -o comb_2017_htt_slim.root --channel-masks
fi

if [ $1 -eq "1" ]; then
echo "strategy 0 is no covariance matrix, strategy 1 is with covariance matrix"
echo "combine -M MultiDimFit -m 125.09 -d comb_2017_htt_slim.root -n BestFit_htt_slim --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --saveToys --saveWorkspace --saveFitResult"
combine -M MultiDimFit -m 125.09 -d comb_2017_htt_slim.root -n BestFit_htt_slim --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --saveToys --saveWorkspace --saveFitResult
fi

if [ $1 -eq "2" ]; then
echo " load best fit snapshot from step 1"
echo " compute uncertainties using algo singles"
echo "combine -M MultiDimFit -m 125.09 -d higgsCombineBestFit_htt_slim.MultiDimFit.mH125.09.123456.root -w w --snapshotName \"MultiDimFit\" -n mu_htt_slim_AllUnc --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --algo=singles --robustFit=1" 
combine -M MultiDimFit -m 125.09 -d higgsCombineBestFit_htt_slim.MultiDimFit.mH125.09.123456.root -w w --snapshotName "MultiDimFit" -n mu_htt_slim_AllUnc --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --algo=singles --robustFit=1
fi
 
if [ $1 -eq "3" ]; then
echo " load best fit snapshot from step 1"
echo " compute uncertainties from step 1 using algo singles but freeze all constrained nuisance parameters"
echo "combine -M MultiDimFit -m 125.09 -d higgsCombineBestFit_htt_slim.MultiDimFit.mH125.09.123456.root  -w w --snapshotName \"MultiDimFit\" -n mu_htt_slim_StatOnly --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --algo=singles --robustFit=1 --freezeParameters all"
combine -M MultiDimFit -m 125.09 -d higgsCombineBestFit_htt_slim.MultiDimFit.mH125.09.123456.root  -w w --snapshotName "MultiDimFit" -n mu_htt_slim_StatOnly --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --algo=singles --robustFit=1 --freezeParameters all
fi

if [ $1 -eq "4" ]; then
echo " load best fit snapshot from step 1"
echo " compute uncertainties using algo grid with auto range"
echo "combine -M MultiDimFit -m 125.09 -d higgsCombineBestFit_htt_slim.MultiDimFit.mH125.09.123456.root -w w --snapshotName \"MultiDimFit\" -n mu_htt_slim_ScanAllUnc --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH  --skipInitialFit --algo=grid  --autoRange 3 --points 30 "
combine -M MultiDimFit -m 125.09 -d higgsCombineBestFit_htt_slim.MultiDimFit.mH125.09.123456.root -w w --snapshotName "MultiDimFit" -n mu_htt_slim_ScanAllUnc --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --algo=grid  --autoRange 3 --points 30 
fi
 

if [ $1 -eq "5" ]; then
echo " load best fit snapshot from step 1"
echo " compute uncertainties using algo grid with auto range but freeze all constrained nuisance parameters"
echo "combine -M MultiDimFit -m 125.09 -d higgsCombineBestFit_htt_slim.MultiDimFit.mH125.09.123456.root -w w --snapshotName \"MultiDimFit\" -n mu_htt_slim_ScanStatOnly --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --skipInitialFit --algo=grid  --autoRange 3 --points 30 --freezeParameters all"
combine -M MultiDimFit -m 125.09 -d higgsCombineBestFit_htt_slim.MultiDimFit.mH125.09.123456.root -w w --snapshotName "MultiDimFit" -n mu_htt_slim_ScanStatOnly --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --skipInitialFit --algo=grid  --autoRange 3 --points 30 --freezeParameters all
fi
 

if [ $1 -eq "6" ]; then
echo " plot the 1D scans breaking down stat. and syst. components"
echo "plot1DScan.py higgsCombinemu_htt_slim_ScanAllUnc.MultiDimFit.mH125.09.root --main-label \"Observed\" --others \"higgsCombinemu_htt_slim_ScanStatOnly.MultiDimFit.mH125.09.root:Stat. Only:2\" --POI r --breakdown syst,stat --output scan_vhbb_r"
plot1DScan.py higgsCombinemu_htt_slim_ScanAllUnc.MultiDimFit.mH125.09.root --main-label "Observed" --others "higgsCombinemu_htt_slim_ScanStatOnly.MultiDimFit.mH125.09.root:Stat. Only:2" --POI r --breakdown syst,stat --output scan_vhbb_r
fi

# PREFIT ASIMOV

if [ $1 -eq "7" ]; then
echo " generate prefit asimov dataset with r=1 and fit it"
echo "combine -M MultiDimFit -m 125.09 -d comb_2017_htt_slim.root -n BestFitAsimov_htt_slim --setParameters r=1 -t -1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --saveToys --saveWorkspace --saveFitResult"
combine -M MultiDimFit -m 125.09 -d comb_2017_htt_slim.root -n BestFitAsimov_htt_slim --setParameters r=1 -t -1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --saveToys --saveWorkspace --saveFitResult
fi

if [ $1 -eq "8" ]; then
echo " load prefit asimov best fit snapshot from step 7"
echo " compute uncertainties on r from prefit asimov dataset with r=1 using algo singles"
echo "combine -M MultiDimFit -m 125.09 -d higgsCombineBestFitAsimov_htt_slim.MultiDimFit.mH125.09.123456.root -w w --snapshotName \"MultiDimFit\" -n mu_htt_slim_AsimovAllUnc --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --algo=singles --robustFit=1" 
combine -M MultiDimFit -m 125.09 -d higgsCombineBestFitAsimov_htt_slim.MultiDimFit.mH125.09.123456.root -w w --snapshotName "MultiDimFit" -D toys/toy_asimov -n mu_htt_slim_AsimovAllUnc --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --algo=singles --robustFit=1
fi


if [ $1 -eq "9" ]; then
echo " load prefit asimov best fit snapshot from step 7"
echo " compute uncertainties on r from prefit asimov dataset with r=1 using algo singles but freeze constrained NPs"
echo "combine -M MultiDimFit -m 125.09 -d higgsCombineBestFitAsimov_htt_slim.MultiDimFit.mH125.09.123456.root -w w --snapshotName \"MultiDimFit\" -n mu_htt_slim_AsimovStatOnly --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --algo=singles --robustFit=1 --freezeParameters all" 
combine -M MultiDimFit -m 125.09 -d higgsCombineBestFitAsimov_htt_slim.MultiDimFit.mH125.09.123456.root -w w --snapshotName "MultiDimFit" -D toys/toy_asimov -n mu_htt_slim_AsimovStatOnly --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --algo=singles --robustFit=1 --freezeParameters all
fi


if [ $1 -eq "10" ]; then
echo " load prefit asimov best fit snapshot from step 7"
echo " compute uncertainties on r from prefit asimov dataset with r=1 using algo singles"
echo "combine -M MultiDimFit -m 125.09 -d higgsCombineBestFitAsimov_htt_slim.MultiDimFit.mH125.09.123456.root -w w --snapshotName \"MultiDimFit\" -n mu_htt_slim_ScanAsimovAllUnc --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --skipInitialFit --algo=grid  --autoRange 3 --points 30" 
combine -M MultiDimFit -m 125.09 -d higgsCombineBestFitAsimov_htt_slim.MultiDimFit.mH125.09.123456.root -w w --snapshotName "MultiDimFit" -D toys/toy_asimov -n mu_htt_slim_ScanAsimovAllUnc --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --skipInitialFit --algo=grid  --autoRange 3 --points 30
fi


if [ $1 -eq "11" ]; then
echo " load prefit asimov best fit snapshot from step 7"
echo " compute uncertainties on r from prefit asimov dataset with r=1 using algo singles but freeze constrained NPs"
echo "combine -M MultiDimFit -m 125.09 -d higgsCombineBestFitAsimov_htt_slim.MultiDimFit.mH125.09.123456.root -w w --snapshotName \"MultiDimFit\" -n mu_htt_slim_ScanAsimovStatOnly --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --skipInitialFit --algo=grid  --autoRange 3 --points 30 --freezeParameters all" 
combine -M MultiDimFit -m 125.09 -d higgsCombineBestFitAsimov_htt_slim.MultiDimFit.mH125.09.123456.root -w w --snapshotName "MultiDimFit" -D toys/toy_asimov -n mu_htt_slim_ScanAsimovStatOnly --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --skipInitialFit --algo=grid --autoRange 3 --points 30 --freezeParameters all
fi

if [ $1 -eq "12" ]; then
echo " plot the 1D scans breaking down stat. and syst. components "
echo "plot1DScan.py higgsCombinemu_htt_slim_ScanAsimovAllUnc.MultiDimFit.mH125.09.root --main-label \"Expected\" --others \"higgsCombinemu_htt_slim_ScanAsimovStatOnly.MultiDimFit.mH125.09.root:Stat. Only:2\" --POI r --breakdown syst,stat --output scan_vhbb_r"
plot1DScan.py higgsCombinemu_htt_slim_ScanAsimovAllUnc.MultiDimFit.mH125.09.root --main-label "Expected" --others "higgsCombinemu_htt_slim_ScanAsimovStatOnly.MultiDimFit.mH125.09.root:Stat. Only:2" --POI r --breakdown syst,stat --output asimovscan_vhbb_r
fi

# POSTFIT ASIMOV
if [ $1 -eq "13" ]; then
echo " generate postfit asimov dataset with r=1 and fit it "
echo "combine -M MultiDimFit -m 125.09 -d comb_2017_htt_slim.root -n BestFitPostfitAsimov_htt_slim --setParameters r=1 -t -1 --toysFrequentist --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --saveToys --saveWorkspace --saveFitResult"
combine -M MultiDimFit -m 125.09 -d comb_2017_htt_slim.root -n BestFitPostfitAsimov_htt_slim --setParameters r=1 -t -1 --toysFrequentist --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --saveToys --saveWorkspace --saveFitResult
fi

if [ $1 -eq "14" ]; then
echo " load postfit asimov best fit snapshot from step 7 "
echo " compute uncertainties on r from postfit asimov dataset with r=1 using algo singles "
echo "combine -M MultiDimFit -m 125.09 -d higgsCombineBestFitPostfitAsimov_htt_slim.MultiDimFit.mH125.09.123456.root -w w --snapshotName \"MultiDimFit\" -n mu_htt_slim_PostfitAsimovAllUnc --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --algo=singles --robustFit=1" 
combine -M MultiDimFit -m 125.09 -d higgsCombineBestFitPostfitAsimov_htt_slim.MultiDimFit.mH125.09.123456.root -w w --snapshotName "MultiDimFit" -D toys/toy_asimov -n mu_htt_slim_PostfitAsimovAllUnc --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --algo=singles --robustFit=1
fi


if [ $1 -eq "15" ]; then
echo " load postfit asimov best fit snapshot from step 7"
echo " compute uncertainties on r from postfit asimov dataset with r=1 using algo singles but freeze constrained NPs"
echo "combine -M MultiDimFit -m 125.09 -d higgsCombineBestFitPostfitAsimov_htt_slim.MultiDimFit.mH125.09.123456.root -w w --snapshotName \"MultiDimFit\" -n mu_htt_slim_PostfitAsimovStatOnly --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --algo=singles --robustFit=1 --freezeParameters all" 
combine -M MultiDimFit -m 125.09 -d higgsCombineBestFitPostfitAsimov_htt_slim.MultiDimFit.mH125.09.123456.root -w w --snapshotName "MultiDimFit" -D toys/toy_asimov -n mu_htt_slim_PostfitAsimovStatOnly --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --algo=singles --robustFit=1 --freezeParameters all
fi


if [ $1 -eq "16" ]; then
echo " load postfit asimov best fit snapshot from step 7"
echo " compute uncertainties on r from postfit asimov dataset with r=1 using algo grid"
echo "combine -M MultiDimFit -m 125.09 -d higgsCombineBestFitPostfitAsimov_htt_slim.MultiDimFit.mH125.09.123456.root -w w --snapshotName \"MultiDimFit\" -n mu_htt_slim_ScanPostfitAsimovAllUnc --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --skipInitialFit --algo=grid  --autoRange 3 --points 30" 
combine -M MultiDimFit -m 125.09 -d higgsCombineBestFitPostfitAsimov_htt_slim.MultiDimFit.mH125.09.123456.root -w w --snapshotName "MultiDimFit" -D toys/toy_asimov -n mu_htt_slim_ScanPostfitAsimovAllUnc --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --skipInitialFit --algo=grid  --autoRange 3 --points 30
fi


if [ $1 -eq "17" ]; then
echo " load postfit asimov best fit snapshot from step 7"
echo " compute uncertainties on r from postfit asimov dataset with r=1 using algo grid but freeze constrained NPs"
echo "combine -M MultiDimFit -m 125.09 -d higgsCombineBestFitPostfitAsimov_htt_slim.MultiDimFit.mH125.09.123456.root -w w --snapshotName \"MultiDimFit\" -n mu_htt_slim_ScanPostfitAsimovStatOnly --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --skipInitialFit --algo=grid  --autoRange 3 --points 30 --freezeParameters all" 
combine -M MultiDimFit -m 125.09 -d higgsCombineBestFitPostfitAsimov_htt_slim.MultiDimFit.mH125.09.123456.root -w w --snapshotName "MultiDimFit" -D toys/toy_asimov -n mu_htt_slim_ScanPostfitAsimovStatOnly --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --skipInitialFit --algo=grid --autoRange 3 --points 30 --freezeParameters all
fi

if [ $1 -eq "18" ]; then
echo " plot the 1D scans from postfit asimov breaking down stat. and syst. components"
echo "plot1DScan.py higgsCombinemu_htt_slim_ScanPostfitAsimovAllUnc.MultiDimFit.mH125.09.root --main-label \"Post-Fit Expected\" --others \"higgsCombinemu_htt_slim_ScanPostfitAsimovStatOnly.MultiDimFit.mH125.09.root:Stat. Only:2\" --POI r --breakdown syst,stat --output scan_vhbb_r"
plot1DScan.py higgsCombinemu_htt_slim_ScanPostfitAsimovAllUnc.MultiDimFit.mH125.09.root --main-label "Post-Fit Expected" --others "higgsCombinemu_htt_slim_ScanPostfitAsimovStatOnly.MultiDimFit.mH125.09.root:Stat. Only:2" --POI r --breakdown syst,stat --output postfitasimovscan_vhbb_r
fi


# Expected Impacts (Subset)

if [ $1 -eq "19" ]; then
echo " do the initial fit on the prefit asimov in preparation for computing the expected impacts "
echo "combineTool.py -M Impacts -m 125.09 -d comb_2017_htt_slim.root -n ImpactsAsimov_htt_slim --setParameters r=1 -t -1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 0 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH  --doInitialFit --robustFit 1"
combineTool.py -M Impacts -m 125.09 -d comb_2017_htt_slim.root -n ImpactsAsimov_htt_slim --setParameters r=1 -t -1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 0 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH  --doInitialFit --robustFit 1
fi


if [ $1 -eq "20" ]; then
echo " run the impacts but only for a subset of the nuisance parameters"
echo "combineTool.py -M Impacts -m 125.09 -d comb_2017_htt_slim.root -n ImpactsAsimov_htt_slim --setParameters r=1 -t -1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --doFits --robustFit 1 --parallel 8 --named BR_htt_PU_alphas,BR_htt_PU_mq,BR_htt_THU,BR_hww_PU_alphas,BR_hww_PU_mq,BR_hww_THU,CMS_PS,CMS_eFakeTau_1prong1pizero_13TeV,CMS_eFakeTau_1prong_13TeV,CMS_eff_b_13TeV,CMS_eff_t_13TeV,CMS_eff_t_et_13TeV,CMS_eff_t_mt_13TeV,CMS_eff_t_tt_13TeV,CMS_eff_trigger_em_13TeV,CMS_eff_trigger_et_13TeV,CMS_eff_trigger_mt_13TeV,CMS_eff_trigger_tt_13TeV,CMS_htt_QCD_0jet_em_13TeV,CMS_htt_QCD_0jet_tt_13TeV,CMS_htt_QCD_VBF_em_13TeV,CMS_htt_QCD_VBF_tt_13TeV,CMS_htt_QCD_boosted_em_13TeV,CMS_htt_QCD_boosted_tt_13TeV,CMS_htt_eff_e,CMS_htt_eff_m,CMS_htt_jetFakeLep_13TeV,CMS_htt_scale_met_13TeV,CMS_htt_vvXsec_13TeV,CMS_htt_wjXsec_13TeV,CMS_htt_zmm_norm_extrap_0jet_em_13TeV,CMS_htt_zmm_norm_extrap_0jet_lt_13TeV,CMS_htt_zmm_norm_extrap_0jet_tt_13TeV,CMS_htt_zmm_norm_extrap_VBF_em_13TeV,CMS_htt_zmm_norm_extrap_VBF_lt_13TeV,CMS_htt_zmm_norm_extrap_VBF_tt_13TeV,CMS_htt_zmm_norm_extrap_boosted_em_13TeV,CMS_htt_zmm_norm_extrap_boosted_lt_13TeV,CMS_htt_zmm_norm_extrap_boosted_tt_13TeV,CMS_mFakeTau_1prong1pizero_13TeV,CMS_mFakeTau_1prong_13TeV,CMS_scale_e_em_13TeV,CMS_tauDMReco_1prong1pizero_13TeV,CMS_tauDMReco_1prong_13TeV,CMS_tauDMReco_3prong_13TeV,QCD_Extrap_Iso_nonIso_et_13TeV,QCD_Extrap_Iso_nonIso_mt_13TeV,QCDscale_qqH,THU_ggH_Mig01,THU_ggH_Mig12,THU_ggH_PT120,THU_ggH_PT60,THU_ggH_Res,THU_ggH_VBF2j,THU_ggH_VBF3j,THU_ggH_qmtop,WHighMTtoLowMT_0jet_13TeV,WHighMTtoLowMT_boosted_13TeV,WHighMTtoLowMT_vbf_13TeV,WSFUncert_et_0jet_13TeV,WSFUncert_et_boosted_13TeV,WSFUncert_et_vbf_13TeV,WSFUncert_mt_0jet_13TeV,WSFUncert_mt_boosted_13TeV,WSFUncert_mt_vbf_13TeV,lumi_13TeV_2016,pdf_Higgs_gg,pdf_Higgs_qqbar"
combineTool.py -M Impacts -m 125.09 -d comb_2017_htt_slim.root -n ImpactsAsimov_htt_slim --setParameters r=1 -t -1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --doFits --robustFit 1 --parallel 8 --named BR_htt_PU_alphas,BR_htt_PU_mq,BR_htt_THU,BR_hww_PU_alphas,BR_hww_PU_mq,BR_hww_THU,CMS_PS,CMS_eFakeTau_1prong1pizero_13TeV,CMS_eFakeTau_1prong_13TeV,CMS_eff_b_13TeV,CMS_eff_t_13TeV,CMS_eff_t_et_13TeV,CMS_eff_t_mt_13TeV,CMS_eff_t_tt_13TeV,CMS_eff_trigger_em_13TeV,CMS_eff_trigger_et_13TeV,CMS_eff_trigger_mt_13TeV,CMS_eff_trigger_tt_13TeV,CMS_htt_QCD_0jet_em_13TeV,CMS_htt_QCD_0jet_tt_13TeV,CMS_htt_QCD_VBF_em_13TeV,CMS_htt_QCD_VBF_tt_13TeV,CMS_htt_QCD_boosted_em_13TeV,CMS_htt_QCD_boosted_tt_13TeV,CMS_htt_eff_e,CMS_htt_eff_m,CMS_htt_jetFakeLep_13TeV,CMS_htt_scale_met_13TeV,CMS_htt_vvXsec_13TeV,CMS_htt_wjXsec_13TeV,CMS_htt_zmm_norm_extrap_0jet_em_13TeV,CMS_htt_zmm_norm_extrap_0jet_lt_13TeV,CMS_htt_zmm_norm_extrap_0jet_tt_13TeV,CMS_htt_zmm_norm_extrap_VBF_em_13TeV,CMS_htt_zmm_norm_extrap_VBF_lt_13TeV,CMS_htt_zmm_norm_extrap_VBF_tt_13TeV,CMS_htt_zmm_norm_extrap_boosted_em_13TeV,CMS_htt_zmm_norm_extrap_boosted_lt_13TeV,CMS_htt_zmm_norm_extrap_boosted_tt_13TeV,CMS_mFakeTau_1prong1pizero_13TeV,CMS_mFakeTau_1prong_13TeV,CMS_scale_e_em_13TeV,CMS_tauDMReco_1prong1pizero_13TeV,CMS_tauDMReco_1prong_13TeV,CMS_tauDMReco_3prong_13TeV,QCD_Extrap_Iso_nonIso_et_13TeV,QCD_Extrap_Iso_nonIso_mt_13TeV,QCDscale_qqH,THU_ggH_Mig01,THU_ggH_Mig12,THU_ggH_PT120,THU_ggH_PT60,THU_ggH_Res,THU_ggH_VBF2j,THU_ggH_VBF3j,THU_ggH_qmtop,WHighMTtoLowMT_0jet_13TeV,WHighMTtoLowMT_boosted_13TeV,WHighMTtoLowMT_vbf_13TeV,WSFUncert_et_0jet_13TeV,WSFUncert_et_boosted_13TeV,WSFUncert_et_vbf_13TeV,WSFUncert_mt_0jet_13TeV,WSFUncert_mt_boosted_13TeV,WSFUncert_mt_vbf_13TeV,lumi_13TeV_2016,pdf_Higgs_gg,pdf_Higgs_qqbar
fi

if [ $1 -eq "21" ]; then
echo " merge the impacts results to an output file (only for a subset)"
echo "combineTool.py -M Impacts -m 125.09 -d comb_2017_htt_slim.root -n ImpactsAsimov_htt_slim --setParameters r=1 -t -1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH  -o impacts_asimov.json --named BR_htt_PU_alphas,BR_htt_PU_mq,BR_htt_THU,BR_hww_PU_alphas,BR_hww_PU_mq,BR_hww_THU,CMS_PS,CMS_eFakeTau_1prong1pizero_13TeV,CMS_eFakeTau_1prong_13TeV,CMS_eff_b_13TeV,CMS_eff_t_13TeV,CMS_eff_t_et_13TeV,CMS_eff_t_mt_13TeV,CMS_eff_t_tt_13TeV,CMS_eff_trigger_em_13TeV,CMS_eff_trigger_et_13TeV,CMS_eff_trigger_mt_13TeV,CMS_eff_trigger_tt_13TeV,CMS_htt_QCD_0jet_em_13TeV,CMS_htt_QCD_0jet_tt_13TeV,CMS_htt_QCD_VBF_em_13TeV,CMS_htt_QCD_VBF_tt_13TeV,CMS_htt_QCD_boosted_em_13TeV,CMS_htt_QCD_boosted_tt_13TeV,CMS_htt_eff_e,CMS_htt_eff_m,CMS_htt_jetFakeLep_13TeV,CMS_htt_scale_met_13TeV,CMS_htt_vvXsec_13TeV,CMS_htt_wjXsec_13TeV,CMS_htt_zmm_norm_extrap_0jet_em_13TeV,CMS_htt_zmm_norm_extrap_0jet_lt_13TeV,CMS_htt_zmm_norm_extrap_0jet_tt_13TeV,CMS_htt_zmm_norm_extrap_VBF_em_13TeV,CMS_htt_zmm_norm_extrap_VBF_lt_13TeV,CMS_htt_zmm_norm_extrap_VBF_tt_13TeV,CMS_htt_zmm_norm_extrap_boosted_em_13TeV,CMS_htt_zmm_norm_extrap_boosted_lt_13TeV,CMS_htt_zmm_norm_extrap_boosted_tt_13TeV,CMS_mFakeTau_1prong1pizero_13TeV,CMS_mFakeTau_1prong_13TeV,CMS_scale_e_em_13TeV,CMS_tauDMReco_1prong1pizero_13TeV,CMS_tauDMReco_1prong_13TeV,CMS_tauDMReco_3prong_13TeV,QCD_Extrap_Iso_nonIso_et_13TeV,QCD_Extrap_Iso_nonIso_mt_13TeV,QCDscale_qqH,THU_ggH_Mig01,THU_ggH_Mig12,THU_ggH_PT120,THU_ggH_PT60,THU_ggH_Res,THU_ggH_VBF2j,THU_ggH_VBF3j,THU_ggH_qmtop,WHighMTtoLowMT_0jet_13TeV,WHighMTtoLowMT_boosted_13TeV,WHighMTtoLowMT_vbf_13TeV,WSFUncert_et_0jet_13TeV,WSFUncert_et_boosted_13TeV,WSFUncert_et_vbf_13TeV,WSFUncert_mt_0jet_13TeV,WSFUncert_mt_boosted_13TeV,WSFUncert_mt_vbf_13TeV,lumi_13TeV_2016,pdf_Higgs_gg,pdf_Higgs_qqbar"
combineTool.py -M Impacts -m 125.09 -d comb_2017_htt_slim.root -n ImpactsAsimov_htt_slim --setParameters r=1 -t -1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH  -o impacts_asimov.json --named BR_htt_PU_alphas,BR_htt_PU_mq,BR_htt_THU,BR_hww_PU_alphas,BR_hww_PU_mq,BR_hww_THU,CMS_PS,CMS_eFakeTau_1prong1pizero_13TeV,CMS_eFakeTau_1prong_13TeV,CMS_eff_b_13TeV,CMS_eff_t_13TeV,CMS_eff_t_et_13TeV,CMS_eff_t_mt_13TeV,CMS_eff_t_tt_13TeV,CMS_eff_trigger_em_13TeV,CMS_eff_trigger_et_13TeV,CMS_eff_trigger_mt_13TeV,CMS_eff_trigger_tt_13TeV,CMS_htt_QCD_0jet_em_13TeV,CMS_htt_QCD_0jet_tt_13TeV,CMS_htt_QCD_VBF_em_13TeV,CMS_htt_QCD_VBF_tt_13TeV,CMS_htt_QCD_boosted_em_13TeV,CMS_htt_QCD_boosted_tt_13TeV,CMS_htt_eff_e,CMS_htt_eff_m,CMS_htt_jetFakeLep_13TeV,CMS_htt_scale_met_13TeV,CMS_htt_vvXsec_13TeV,CMS_htt_wjXsec_13TeV,CMS_htt_zmm_norm_extrap_0jet_em_13TeV,CMS_htt_zmm_norm_extrap_0jet_lt_13TeV,CMS_htt_zmm_norm_extrap_0jet_tt_13TeV,CMS_htt_zmm_norm_extrap_VBF_em_13TeV,CMS_htt_zmm_norm_extrap_VBF_lt_13TeV,CMS_htt_zmm_norm_extrap_VBF_tt_13TeV,CMS_htt_zmm_norm_extrap_boosted_em_13TeV,CMS_htt_zmm_norm_extrap_boosted_lt_13TeV,CMS_htt_zmm_norm_extrap_boosted_tt_13TeV,CMS_mFakeTau_1prong1pizero_13TeV,CMS_mFakeTau_1prong_13TeV,CMS_scale_e_em_13TeV,CMS_tauDMReco_1prong1pizero_13TeV,CMS_tauDMReco_1prong_13TeV,CMS_tauDMReco_3prong_13TeV,QCD_Extrap_Iso_nonIso_et_13TeV,QCD_Extrap_Iso_nonIso_mt_13TeV,QCDscale_qqH,THU_ggH_Mig01,THU_ggH_Mig12,THU_ggH_PT120,THU_ggH_PT60,THU_ggH_Res,THU_ggH_VBF2j,THU_ggH_VBF3j,THU_ggH_qmtop,WHighMTtoLowMT_0jet_13TeV,WHighMTtoLowMT_boosted_13TeV,WHighMTtoLowMT_vbf_13TeV,WSFUncert_et_0jet_13TeV,WSFUncert_et_boosted_13TeV,WSFUncert_et_vbf_13TeV,WSFUncert_mt_0jet_13TeV,WSFUncert_mt_boosted_13TeV,WSFUncert_mt_vbf_13TeV,lumi_13TeV_2016,pdf_Higgs_gg,pdf_Higgs_qqbar
fi

if [ $1 -eq "22" ]; then
echo " make the plot of the expected impacts for a subset"
echo "plotImpacts.py -i impacts_asimov.json -o impacts_asimov"
plotImpacts.py -i impacts_asimov.json -o impacts_asimov
fi

# Observed Impacts (Subset)

if [ $1 -eq "23" ]; then
echo " initial fit for observed impacts, for a subset"
echo "combineTool.py -M Impacts -m 125.09 -d comb_2017_htt_slim.root -n Impacts_htt_slim --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH  --doInitialFit --robustFit 1"
combineTool.py -M Impacts -m 125.09 -d comb_2017_htt_slim.root -n Impacts_htt_slim --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH  --doInitialFit --robustFit 1
fi


if [ $1 -eq "24" ]; then
echo " do the impact fits on the observed dataset for a subset of the NPs"
echo "combineTool.py -M Impacts -m 125.09 -d comb_2017_htt_slim.root -n Impacts_htt_slim --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --doFits --robustFit 1 --parallel 8 --named BR_htt_PU_alphas,BR_htt_PU_mq,BR_htt_THU,BR_hww_PU_alphas,BR_hww_PU_mq,BR_hww_THU,CMS_PS,CMS_eFakeTau_1prong1pizero_13TeV,CMS_eFakeTau_1prong_13TeV,CMS_eff_b_13TeV,CMS_eff_t_13TeV,CMS_eff_t_et_13TeV,CMS_eff_t_mt_13TeV,CMS_eff_t_tt_13TeV,CMS_eff_trigger_em_13TeV,CMS_eff_trigger_et_13TeV,CMS_eff_trigger_mt_13TeV,CMS_eff_trigger_tt_13TeV,CMS_htt_QCD_0jet_em_13TeV,CMS_htt_QCD_0jet_tt_13TeV,CMS_htt_QCD_VBF_em_13TeV,CMS_htt_QCD_VBF_tt_13TeV,CMS_htt_QCD_boosted_em_13TeV,CMS_htt_QCD_boosted_tt_13TeV,CMS_htt_eff_e,CMS_htt_eff_m,CMS_htt_jetFakeLep_13TeV,CMS_htt_scale_met_13TeV,CMS_htt_vvXsec_13TeV,CMS_htt_wjXsec_13TeV,CMS_htt_zmm_norm_extrap_0jet_em_13TeV,CMS_htt_zmm_norm_extrap_0jet_lt_13TeV,CMS_htt_zmm_norm_extrap_0jet_tt_13TeV,CMS_htt_zmm_norm_extrap_VBF_em_13TeV,CMS_htt_zmm_norm_extrap_VBF_lt_13TeV,CMS_htt_zmm_norm_extrap_VBF_tt_13TeV,CMS_htt_zmm_norm_extrap_boosted_em_13TeV,CMS_htt_zmm_norm_extrap_boosted_lt_13TeV,CMS_htt_zmm_norm_extrap_boosted_tt_13TeV,CMS_mFakeTau_1prong1pizero_13TeV,CMS_mFakeTau_1prong_13TeV,CMS_scale_e_em_13TeV,CMS_tauDMReco_1prong1pizero_13TeV,CMS_tauDMReco_1prong_13TeV,CMS_tauDMReco_3prong_13TeV,QCD_Extrap_Iso_nonIso_et_13TeV,QCD_Extrap_Iso_nonIso_mt_13TeV,QCDscale_qqH,THU_ggH_Mig01,THU_ggH_Mig12,THU_ggH_PT120,THU_ggH_PT60,THU_ggH_Res,THU_ggH_VBF2j,THU_ggH_VBF3j,THU_ggH_qmtop,WHighMTtoLowMT_0jet_13TeV,WHighMTtoLowMT_boosted_13TeV,WHighMTtoLowMT_vbf_13TeV,WSFUncert_et_0jet_13TeV,WSFUncert_et_boosted_13TeV,WSFUncert_et_vbf_13TeV,WSFUncert_mt_0jet_13TeV,WSFUncert_mt_boosted_13TeV,WSFUncert_mt_vbf_13TeV,lumi_13TeV_2016,pdf_Higgs_gg,pdf_Higgs_qqbar"
combineTool.py -M Impacts -m 125.09 -d comb_2017_htt_slim.root -n Impacts_htt_slim --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --doFits --robustFit 1 --parallel 8 --named BR_htt_PU_alphas,BR_htt_PU_mq,BR_htt_THU,BR_hww_PU_alphas,BR_hww_PU_mq,BR_hww_THU,CMS_PS,CMS_eFakeTau_1prong1pizero_13TeV,CMS_eFakeTau_1prong_13TeV,CMS_eff_b_13TeV,CMS_eff_t_13TeV,CMS_eff_t_et_13TeV,CMS_eff_t_mt_13TeV,CMS_eff_t_tt_13TeV,CMS_eff_trigger_em_13TeV,CMS_eff_trigger_et_13TeV,CMS_eff_trigger_mt_13TeV,CMS_eff_trigger_tt_13TeV,CMS_htt_QCD_0jet_em_13TeV,CMS_htt_QCD_0jet_tt_13TeV,CMS_htt_QCD_VBF_em_13TeV,CMS_htt_QCD_VBF_tt_13TeV,CMS_htt_QCD_boosted_em_13TeV,CMS_htt_QCD_boosted_tt_13TeV,CMS_htt_eff_e,CMS_htt_eff_m,CMS_htt_jetFakeLep_13TeV,CMS_htt_scale_met_13TeV,CMS_htt_vvXsec_13TeV,CMS_htt_wjXsec_13TeV,CMS_htt_zmm_norm_extrap_0jet_em_13TeV,CMS_htt_zmm_norm_extrap_0jet_lt_13TeV,CMS_htt_zmm_norm_extrap_0jet_tt_13TeV,CMS_htt_zmm_norm_extrap_VBF_em_13TeV,CMS_htt_zmm_norm_extrap_VBF_lt_13TeV,CMS_htt_zmm_norm_extrap_VBF_tt_13TeV,CMS_htt_zmm_norm_extrap_boosted_em_13TeV,CMS_htt_zmm_norm_extrap_boosted_lt_13TeV,CMS_htt_zmm_norm_extrap_boosted_tt_13TeV,CMS_mFakeTau_1prong1pizero_13TeV,CMS_mFakeTau_1prong_13TeV,CMS_scale_e_em_13TeV,CMS_tauDMReco_1prong1pizero_13TeV,CMS_tauDMReco_1prong_13TeV,CMS_tauDMReco_3prong_13TeV,QCD_Extrap_Iso_nonIso_et_13TeV,QCD_Extrap_Iso_nonIso_mt_13TeV,QCDscale_qqH,THU_ggH_Mig01,THU_ggH_Mig12,THU_ggH_PT120,THU_ggH_PT60,THU_ggH_Res,THU_ggH_VBF2j,THU_ggH_VBF3j,THU_ggH_qmtop,WHighMTtoLowMT_0jet_13TeV,WHighMTtoLowMT_boosted_13TeV,WHighMTtoLowMT_vbf_13TeV,WSFUncert_et_0jet_13TeV,WSFUncert_et_boosted_13TeV,WSFUncert_et_vbf_13TeV,WSFUncert_mt_0jet_13TeV,WSFUncert_mt_boosted_13TeV,WSFUncert_mt_vbf_13TeV,lumi_13TeV_2016,pdf_Higgs_gg,pdf_Higgs_qqbar
fi

if [ $1 -eq "25" ]; then
echo " merge the observed impacts on a subset of NPs"
echo "combineTool.py -M Impacts -m 125.09 -d comb_2017_htt_slim.root -n Impacts_htt_slim --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH  -o impacts.json --named BR_htt_PU_alphas,BR_htt_PU_mq,BR_htt_THU,BR_hww_PU_alphas,BR_hww_PU_mq,BR_hww_THU,CMS_PS,CMS_eFakeTau_1prong1pizero_13TeV,CMS_eFakeTau_1prong_13TeV,CMS_eff_b_13TeV,CMS_eff_t_13TeV,CMS_eff_t_et_13TeV,CMS_eff_t_mt_13TeV,CMS_eff_t_tt_13TeV,CMS_eff_trigger_em_13TeV,CMS_eff_trigger_et_13TeV,CMS_eff_trigger_mt_13TeV,CMS_eff_trigger_tt_13TeV,CMS_htt_QCD_0jet_em_13TeV,CMS_htt_QCD_0jet_tt_13TeV,CMS_htt_QCD_VBF_em_13TeV,CMS_htt_QCD_VBF_tt_13TeV,CMS_htt_QCD_boosted_em_13TeV,CMS_htt_QCD_boosted_tt_13TeV,CMS_htt_eff_e,CMS_htt_eff_m,CMS_htt_jetFakeLep_13TeV,CMS_htt_scale_met_13TeV,CMS_htt_vvXsec_13TeV,CMS_htt_wjXsec_13TeV,CMS_htt_zmm_norm_extrap_0jet_em_13TeV,CMS_htt_zmm_norm_extrap_0jet_lt_13TeV,CMS_htt_zmm_norm_extrap_0jet_tt_13TeV,CMS_htt_zmm_norm_extrap_VBF_em_13TeV,CMS_htt_zmm_norm_extrap_VBF_lt_13TeV,CMS_htt_zmm_norm_extrap_VBF_tt_13TeV,CMS_htt_zmm_norm_extrap_boosted_em_13TeV,CMS_htt_zmm_norm_extrap_boosted_lt_13TeV,CMS_htt_zmm_norm_extrap_boosted_tt_13TeV,CMS_mFakeTau_1prong1pizero_13TeV,CMS_mFakeTau_1prong_13TeV,CMS_scale_e_em_13TeV,CMS_tauDMReco_1prong1pizero_13TeV,CMS_tauDMReco_1prong_13TeV,CMS_tauDMReco_3prong_13TeV,QCD_Extrap_Iso_nonIso_et_13TeV,QCD_Extrap_Iso_nonIso_mt_13TeV,QCDscale_qqH,THU_ggH_Mig01,THU_ggH_Mig12,THU_ggH_PT120,THU_ggH_PT60,THU_ggH_Res,THU_ggH_VBF2j,THU_ggH_VBF3j,THU_ggH_qmtop,WHighMTtoLowMT_0jet_13TeV,WHighMTtoLowMT_boosted_13TeV,WHighMTtoLowMT_vbf_13TeV,WSFUncert_et_0jet_13TeV,WSFUncert_et_boosted_13TeV,WSFUncert_et_vbf_13TeV,WSFUncert_mt_0jet_13TeV,WSFUncert_mt_boosted_13TeV,WSFUncert_mt_vbf_13TeV,lumi_13TeV_2016,pdf_Higgs_gg,pdf_Higgs_qqbar"
combineTool.py -M Impacts -m 125.09 -d comb_2017_htt_slim.root -n Impacts_htt_slim --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH  -o impacts.json --named BR_htt_PU_alphas,BR_htt_PU_mq,BR_htt_THU,BR_hww_PU_alphas,BR_hww_PU_mq,BR_hww_THU,CMS_PS,CMS_eFakeTau_1prong1pizero_13TeV,CMS_eFakeTau_1prong_13TeV,CMS_eff_b_13TeV,CMS_eff_t_13TeV,CMS_eff_t_et_13TeV,CMS_eff_t_mt_13TeV,CMS_eff_t_tt_13TeV,CMS_eff_trigger_em_13TeV,CMS_eff_trigger_et_13TeV,CMS_eff_trigger_mt_13TeV,CMS_eff_trigger_tt_13TeV,CMS_htt_QCD_0jet_em_13TeV,CMS_htt_QCD_0jet_tt_13TeV,CMS_htt_QCD_VBF_em_13TeV,CMS_htt_QCD_VBF_tt_13TeV,CMS_htt_QCD_boosted_em_13TeV,CMS_htt_QCD_boosted_tt_13TeV,CMS_htt_eff_e,CMS_htt_eff_m,CMS_htt_jetFakeLep_13TeV,CMS_htt_scale_met_13TeV,CMS_htt_vvXsec_13TeV,CMS_htt_wjXsec_13TeV,CMS_htt_zmm_norm_extrap_0jet_em_13TeV,CMS_htt_zmm_norm_extrap_0jet_lt_13TeV,CMS_htt_zmm_norm_extrap_0jet_tt_13TeV,CMS_htt_zmm_norm_extrap_VBF_em_13TeV,CMS_htt_zmm_norm_extrap_VBF_lt_13TeV,CMS_htt_zmm_norm_extrap_VBF_tt_13TeV,CMS_htt_zmm_norm_extrap_boosted_em_13TeV,CMS_htt_zmm_norm_extrap_boosted_lt_13TeV,CMS_htt_zmm_norm_extrap_boosted_tt_13TeV,CMS_mFakeTau_1prong1pizero_13TeV,CMS_mFakeTau_1prong_13TeV,CMS_scale_e_em_13TeV,CMS_tauDMReco_1prong1pizero_13TeV,CMS_tauDMReco_1prong_13TeV,CMS_tauDMReco_3prong_13TeV,QCD_Extrap_Iso_nonIso_et_13TeV,QCD_Extrap_Iso_nonIso_mt_13TeV,QCDscale_qqH,THU_ggH_Mig01,THU_ggH_Mig12,THU_ggH_PT120,THU_ggH_PT60,THU_ggH_Res,THU_ggH_VBF2j,THU_ggH_VBF3j,THU_ggH_qmtop,WHighMTtoLowMT_0jet_13TeV,WHighMTtoLowMT_boosted_13TeV,WHighMTtoLowMT_vbf_13TeV,WSFUncert_et_0jet_13TeV,WSFUncert_et_boosted_13TeV,WSFUncert_et_vbf_13TeV,WSFUncert_mt_0jet_13TeV,WSFUncert_mt_boosted_13TeV,WSFUncert_mt_vbf_13TeV,lumi_13TeV_2016,pdf_Higgs_gg,pdf_Higgs_qqbar
fi

if [ $1 -eq "26" ]; then
echo " plot the results of the impacts on observed for a subset"
plotImpacts.py -i impacts.json -o impacts
fi

# Observed Impacts (All, on the grid)

if [ $1 -eq "27" ]; then
echo " initial fit for full observed impacts"
echo "combineTool.py -M Impacts -m 125.09 -d comb_2017_htt_slim.root -n FullImpacts_htt_slim --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH  --doInitialFit --robustFit 1 "
combineTool.py -M Impacts -m 125.09 -d comb_2017_htt_slim.root -n FullImpacts_htt_slim --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH  --doInitialFit --robustFit 1 
fi


if [ $1 -eq "28" ]; then
echo " submit the full osbserved impacts to crab"
echo " make sure you have initialized your grid proxy and that you have sourced the crab environment"
source /cvmfs/cms.cern.ch/crab3/crab.sh
echo "combineTool.py -M Impacts -m 125.09 -d comb_2017_htt_slim.root -n FullImpacts_htt_slim --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --doFits --robustFit 1 --robustHesse 1  --job-mode crab3 --task-name full_impacts --custom-crab custom_crab.py"
combineTool.py -M Impacts -m 125.09 -d comb_2017_htt_slim.root -n FullImpacts_htt_slim --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --doFits --robustFit 1 --robustHesse 1  --job-mode crab3 --task-name full_impacts --custom-crab custom_crab.py
fi

if [ $1 -eq "29" ]; then
echo " get the crab results of the impacts"
echo "bash -c 'for f in /eos/uscms/store/user/${username}/Combine_Tutorial_2018/Combine/full_impacts/*/*/combine_output_*.tar; do tar xf $f; done'"
bash -c 'for f in /eos/uscms/store/user/${username}/Combine_Tutorial_2018/Combine/full_impacts/*/*/combine_output_*.tar; do tar xf $f; done'
fi

if [ $1 -eq "30" ]; then
echo " merge the results of the impacts"
echo "combineTool.py -M Impacts -m 125.09 -d comb_2017_htt_slim.root -n FullImpacts_htt_slim --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH  -o fullimpacts.json "
combineTool.py -M Impacts -m 125.09 -d comb_2017_htt_slim.root -n FullImpacts_htt_slim --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH  -o fullimpacts.json 
fi

if [ $1 -eq "31" ]; then
echo " plot the full observed impacts"
plotImpacts.py -i fullimpacts.json -o fullimpacts
fi

if [ $1 -eq "32" ]; then
echo " compute the goodness of fit on observed using saturated algorithm "
echo "combineTool.py -M GoodnessOfFit --algorithm saturated -m 125.09 -d comb_2017_htt_slim.root -n GOF_Saturated_htt_slim --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH "
combineTool.py -M GoodnessOfFit --algorithm saturated -m 125.09 -d comb_2017_htt_slim.root -n GOF_Saturated_htt_slim --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH 
fi

if [ $1 -eq "33" ]; then
echo " generate saturated distribution from 1000 toys using crab"
echo " make sure you have initialized your grid proxy and that you have sourced the crab environment"
source /cvmfs/cms.cern.ch/crab3/crab.sh
echo "combineTool.py -M GoodnessOfFit --algorithm saturated -m 125.09 -d comb_2017_htt_slim.root -n GOF_Saturated_htt_slim --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --expectSignal 1.216 -s 1:1000:1 -t 1 --toysFrequentist --merge 10 --job-mode crab3 --task-name gof_saturated --custom-crab custom_crab.py"
combineTool.py -M GoodnessOfFit --algorithm saturated -m 125.09 -d comb_2017_htt_slim.root -n GOF_Saturated_htt_slim --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --expectSignal 1.216 -s 1:1000:1 -t 1 --toysFrequentist --merge 10 --job-mode crab3 --task-name gof_saturated --custom-crab custom_crab.py
fi


if [ $1 -eq "34" ]; then
echo " get the crab results of the saturated GOF toys"
echo "bash -c 'for f in /eos/uscms/store/user/${username}/Combine_Tutorial_2018/Combine/gof_saturated/*/*/combine_output_*.tar; do tar xf $f; done'" 
bash -c 'for f in /eos/uscms/store/user/${username}/Combine_Tutorial_2018/Combine/gof_saturated/*/*/combine_output_*.tar; do tar xf $f; done'
echo "hadd -f gof_saturated_toys.root higgsCombine*GOF_Saturated_htt_slim*.root"
hadd -f gof_saturated_toys.root higgsCombine*GOF_Saturated_htt_slim*.root
fi

if [ $1 -eq "35" ]; then
echo " plot GOF"
echo "python plotGOF.py -l -q -b"
python plotGOF.py -l -q -b
fi

if [ $1 -eq "36" ]; then
echo " run Fit Diagnostics to get post fit shapes"
echo "combine -M FitDiagnostics -m 125.09 -d comb_2017_htt_slim.root -n FitDiagnostics_htt_slim --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH"
combine -M FitDiagnostics -m 125.09 -d comb_2017_htt_slim.root -n FitDiagnostics_htt_slim --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH
fi

if [ $1 -eq "37" ]; then
echo " run PostFitShapes"
echo "PostFitShapesFromWorkspace -w comb_2017_htt_slim.root -o comb_2017_htt_slim_shapes.root --samples 300 -f fitDiagnosticsFitDiagnostics_htt_slim.root:fit_s --postfit --sampling --skip-proc-errs"
PostFitShapesFromWorkspace -w comb_2017_htt_slim.root -o comb_2017_htt_slim_shapes.root --samples 300 -f fitDiagnosticsFitDiagnostics_htt_slim.root:fit_s --postfit --sampling --skip-proc-errs
fi

if [ $1 -eq "38" ]; then
echo " example plot of PostFitShapes"
echo "python plotPostFitShapes.py -l -q -b"
python plotPostFitShapes.py -l -q -b
fi


if [ $1 -eq "39" ]; then
echo " Asymptotic Limits "
echo "combine -M Asymptotic -m 125.09 ../comb_2017_htt_slim.root --cminDefaultMinimizerStrategy 0 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --setParameterRanges r=0.0,2.2"
combine -M Asymptotic -m 125.09 ../comb_2017_htt_slim.root --cminDefaultMinimizerStrategy 0 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --setParameterRanges r=0.0,2.2
fi

if [ $1 -eq "40" ]; then
echo " Toy Based CLs Limits on the grid"
echo "combineTool.py -M HyrbridNew --LHCMode LHC-limits -m 125.09 -d comb_2017_htt_slim.root -n FullCLs_htt_slim --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -s 1:20:1 -T 100 --saveHybridResult --singlePoint 0.1:2.1:0.2 --job-mode crab3 --task-name full_cls --custom-crab custom_crab.py "
combineTool.py -M HyrbridNew --LHCMode LHC-limits -m 125.09 -d comb_2017_htt_slim.root -n FullCLs_htt_slim --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -s 1:20:1 -T 100 --saveHybridResult --singlePoint 0.1:2.1:0.2 --job-mode crab3 --task-name full_cls --custom-crab custom_crab.py 


if [ $1 -eq "41" ]; then
echo " Collect Toy Based CLs Limits from the grid"
echo "bash -c 'for f in /eos/uscms/store/user/${username}/Combine_Tutorial_2018/Combine/full_cls/*/*/combine_output*.tar; do tar -xvf $f; done'"
bash -c 'for f in /eos/uscms/store/user/${username}/Combine_Tutorial_2018/Combine/full_cls/*/*/combine_output*.tar; do tar -xvf $f; done'  
echo "hadd grid.root higgsCombineFullCLs_htt_slim.POINT.*.root"
hadd grid.root higgsCombineFullCLs_htt_slim.POINT.*.root 
fi


if [ $1 -eq "42" ]; then
echo " Compute the limits"
combine -M HybridNew -m 125.09 --LHCmode LHC-limits comb_2017_htt_slim.root -T 2000 --readHybridResults --grid grid.root --plot cls_fromgrid_exp025.pdf --expectedFromGrid 0.025
combine -M HybridNew -m 125.09 --LHCmode LHC-limits comb_2017_htt_slim.root -T 2000 --readHybridResults --grid grid.root --plot cls_fromgrid_exp16.pdf --expectedFromGrid 0.16
combine -M HybridNew -m 125.09 --LHCmode LHC-limits comb_2017_htt_slim.root -T 2000 --readHybridResults --grid grid.root --plot cls_fromgrid_exp50.pdf --expectedFromGrid 0.50
combine -M HybridNew -m 125.09 --LHCmode LHC-limits comb_2017_htt_slim.root -T 2000 --readHybridResults --grid grid.root --plot cls_fromgrid_exp84.pdf --expectedFromGrid 0.84
combine -M HybridNew -m 125.09 --LHCmode LHC-limits comb_2017_htt_slim.root -T 2000 --readHybridResults --grid grid.root --plot cls_fromgrid_exp975.pdf --expectedFromGrid 0.975
combine -M HybridNew -m 125.09 --LHCmode LHC-limits comb_2017_htt_slim.root -T 2000 --readHybridResults --grid grid.root --plot cls_fromgrid.pdf
fi


