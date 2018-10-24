#!/bin/bash

ulimit -s unlimited

#text2workspace.py hgg_toy_datacard.txt

## First perform a pseudo-Ftest to see that order 2 polynomial works best
#root -l -q -b makeRooMultiPdfWorkspaceFTest.C | grep "chi2"

## Create workspace for bias studies with 3 different bkg pdfs
#root -l -q -b makeRooMultiPdfWorkspace.C | grep "chi2"

## Generate 1000 Toys for each pdf_index

#combine hgg_toy_datacard.root -M GenerateOnly -n Toys0 --setParameters pdf_index=0 --toysFrequentist -t 1000 --expectSignal 1 --saveToys -m 125 --setParameters mean=125.0 --freezeParameters mean,pdf_index

#combine hgg_toy_datacard.root -M GenerateOnly -n Toys1 --setParameters pdf_index=1 --toysFrequentist -t 1000 --expectSignal 1 --saveToys -m 125 --setParameters mean=125.0 --freezeParameters mean,pdf_index

#combine hgg_toy_datacard.root -M GenerateOnly -n Toys2 --setParameters pdf_index=2 --toysFrequentist -t 1000 --expectSignal 1 --saveToys -m 125 --setParameters mean=125.0 --freezeParameters mean,pdf_index

## Fit each set of toys with pdf_index 0. Freeze the other parameters to help with error calculation
#combine hgg_toy_datacard.root -M FitDiagnostics -n Fit0with0 -m 125 --setParameters mean=125.0 --setParameters pdf_index=0 --toysFile higgsCombineToys0.GenerateOnly.mH125.123456.root -t 1000 --rMin -10 --rMax 10 --freezeParameters mean,pdf_index,env_pdf_1_8TeV_bern2_p0,env_pdf_1_8TeV_bern2_p1,env_pdf_1_8TeV_pow1_p1 --robustFit 1

#combine hgg_toy_datacard.root -M FitDiagnostics -n Fit1with0 -m 125 --setParameters mean=125.0 --setParameters pdf_index=0 --toysFile higgsCombineToys1.GenerateOnly.mH125.123456.root -t 1000 --rMin -10 --rMax 10 --freezeParameters mean,pdf_index,env_pdf_1_8TeV_bern2_p0,env_pdf_1_8TeV_bern2_p1,env_pdf_1_8TeV_pow1_p1 --robustFit 1

#combine hgg_toy_datacard.root -M FitDiagnostics -n Fit2with0 -m 125 --setParameters mean=125.0 --setParameters pdf_index=0 --toysFile higgsCombineToys2.GenerateOnly.mH125.123456.root -t 1000 --rMin -10 --rMax 10 --freezeParameters mean,pdf_index,env_pdf_1_8TeV_bern2_p0,env_pdf_1_8TeV_bern2_p1,env_pdf_1_8TeV_pow1_p1 --robustFit 1

## Fit each set of toys with pdf_index 1. Freeze the other parameters to help with error calculation
#combine hgg_toy_datacard.root -M FitDiagnostics -n Fit0with1 -m 125 --setParameters mean=125.0 --setParameters pdf_index=1 --toysFile higgsCombineToys0.GenerateOnly.mH125.123456.root -t 1000 --rMin -10 --rMax 10 --freezeParameters mean,pdf_index,env_pdf_1_8TeV_exp1_p1,env_pdf_1_8TeV_pow1_p1 --robustFit 1

#combine hgg_toy_datacard.root -M FitDiagnostics -n Fit1with1 -m 125 --setParameters mean=125.0 --setParameters pdf_index=1 --toysFile higgsCombineToys1.GenerateOnly.mH125.123456.root -t 1000 --rMin -10 --rMax 10 --freezeParameters mean,pdf_index,env_pdf_1_8TeV_exp1_p1,env_pdf_1_8TeV_pow1_p1 --robustFit 1

#combine hgg_toy_datacard.root -M FitDiagnostics -n Fit2with1 -m 125 --setParameters mean=125.0 --setParameters pdf_index=1 --toysFile higgsCombineToys2.GenerateOnly.mH125.123456.root -t 1000 --rMin -10 --rMax 10 --freezeParameters mean,pdf_index,env_pdf_1_8TeV_exp1_p1,env_pdf_1_8TeV_pow1_p1 --robustFit 1


## Fit each set of toys with pdf_index 2. Freeze the other parameters to help with error calculation
#combine hgg_toy_datacard.root -M FitDiagnostics -n Fit0with2 -m 125 --setParameters mean=125.0 --setParameters pdf_index=2 --toysFile higgsCombineToys0.GenerateOnly.mH125.123456.root -t 1000 --rMin -10 --rMax 10 --freezeParameters mean,pdf_index,env_pdf_1_8TeV_exp1_p1,env_pdf_1_8TeV_bern2_p0,env_pdf_1_8TeV_bern2_p1 --robustFit 1

#combine hgg_toy_datacard.root -M FitDiagnostics -n Fit1with2 -m 125 --setParameters mean=125.0 --setParameters pdf_index=2 --toysFile higgsCombineToys1.GenerateOnly.mH125.123456.root -t 1000 --rMin -10 --rMax 10 --freezeParameters mean,pdf_index,env_pdf_1_8TeV_exp1_p1,env_pdf_1_8TeV_bern2_p0,env_pdf_1_8TeV_bern2_p1 --robustFit 1

#combine hgg_toy_datacard.root -M FitDiagnostics -n Fit2with2 -m 125 --setParameters mean=125.0 --setParameters pdf_index=2 --toysFile higgsCombineToys2.GenerateOnly.mH125.123456.root -t 1000 --rMin -10 --rMax 10 --freezeParameters mean,pdf_index,env_pdf_1_8TeV_exp1_p1,env_pdf_1_8TeV_bern2_p0,env_pdf_1_8TeV_bern2_p1 --robustFit 1

## Make a plot of the bias studies results

#python plotBiasStudies.py -l -q -b

## Do a scan for r floating the pdf_index on a particular toy and saving the pdf_index parameter to the output tree

#combine hgg_toy_datacard.root -M MultiDimFit -n MultiPDFScan_Toys1_1 -m 125 --setParameters mean=125.0 --freezeParameters mean --toysFile higgsCombineToys1.GenerateOnly.mH125.123456.root -t 1 --rMin -5 --rMax 5 --saveSpecifiedIndex pdf_index --algo=grid --points 100 --cminDefaultMinimizerStrategy 0

#plot1DScan.py higgsCombineMultiPDFScan_Toys1_1.MultiDimFit.mH125.123456.root --main-label "Toy 1 PDF 1" --POI r --output rscan_toy1_pdf1_multi

##check the value of pdf_index as a function of r
##root -l higgsCombineMultiPDFScan_Toys1_1.MultiDimFit.mH125.123456.root
##limit->Draw("pdf_index:r")

# Lets look closer at this one particular toy. Make a basic plot of the fit result.
#combine hgg_toy_datacard.root -M FitDiagnostics -n BestFit_Toys1_1 -m 125 --setParameters mean=125.0 --freezeParameters mean --toysFile higgsCombineToys1.GenerateOnly.mH125.123456.root -t 1 --rMin -5 --rMax 5  --cminDefaultMinimizerStrategy 0 --plots

##display diphoton_CMS_hgg_mass_fit_s.png

# get the siginificance at 125
#combine hgg_toy_datacard.root -M Significance -n BestFit_Toys1_1 -m 125 --setParameters mean=125.0 --freezeParameters mean --toysFile higgsCombineToys1.GenerateOnly.mH125.123456.root -t 1 --rMin -5 --rMax 5  --cminDefaultMinimizerStrategy 0 

# check if m=125 is the most significant excess
#for mass in $(seq 110 150);
#do
#echo "mass= ${mass}"
#combine hgg_toy_datacard.root -M Significance -n Signif_Toys1_1 -m $mass --setParameters mean=$mass --freezeParameters mean --toysFile higgsCombineToys1.GenerateOnly.mH125.123456.root -t 1 --rMin -5 --rMax 5 --cminDefaultMinimizerStrategy 0
#done


# generate background only toys
#combine hgg_toy_datacard.root -M GenerateOnly -n _btoys --setParameters pdf_index=1,r=0 -t 100 --toysFrequentist  --saveToys

#for mass in $(seq 110 150);
#do
#combine hgg_toy_datacard.root -M Significance -n Signif_BToys_1 --toysFile higgsCombine_btoys.GenerateOnly.mH120.123456.root -m $mass --setParameters mean=$mass --freezeParameters mean -t 100 --cminDefaultMinimizerStrategy 0 --rMin -5 --rMax 5
#done

#hadd btoys_significance.root higgsCombine*Signif_BToys*.root

