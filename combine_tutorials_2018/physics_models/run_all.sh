#!/bin/bash

# Get the workspaces:
./get_ws.sh

# Combine the cards:
HGG="hgg_8TeV=hgg_8TeV_MVA_cat0145.txt"
HTT="htt_0_8TeV=htt_mt_0_8TeV.txt htt_1_8TeV=htt_mt_1_8TeV.txt htt_2_8TeV=htt_mt_2_8TeV.txt htt_3_8TeV=htt_mt_3_8TeV.txt htt_5_8TeV=htt_mt_5_8TeV.txt"

# Create combinations by decay mode
combineCards.py $HGG > comb_hgg.txt
combineCards.py $HTT > comb_htt.txt

# Create full combination
combineCards.py $HGG $HTT > comb_ggtt.txt

# Create workspace for hgg using cVcF Physics Model (Does't work in SWAN, but this is how to do it):
#text2workspace.py -m 125 -P HiggsAnalysis.CombinedLimit.HiggsCouplings:cVcF comb_hgg.txt -o comb_hgg_kvkf.root

# Run 1D fits for CV and CF using Hgg
combine -M MultiDimFit -m 125 --setPhysicsModelParameterRanges CV=0.0,5.0:CF=0.0,5.0 comb_hgg_kvkf.root --algo=singles --robustFit=1

# --- MultiDimFit ---
# best fit parameter values and profile-likelihood uncertainties:
#    CV :    +1.233   -0.501/+0.748 (68%)
#    CF :    +2.217   -1.476/+2.783 (68%)

# Create workspace for htt using cVcF Physics Model
#text2workspace.py -m 125 -P HiggsAnalysis.CombinedLimit.HiggsCouplings:cVcF comb_htt.txt -o comb_htt_kvkf.root

# Run 1D fits for CV and CF using Htt
combine -M MultiDimFit -m 125 --setPhysicsModelParameterRanges CV=0.0,5.0:CF=0.0,5.0 comb_htt_kvkf.root --algo=singles --robustFit=1

# --- MultiDimFit ---
# best fit parameter values and profile-likelihood uncertainties:
#   CV :    +3.677   -2.608/+1.323 (68%)
#   CF :    +0.826   -0.263/+0.311 (68%)

# Create workspace for combined Hgg+Htt using cVcF Physics Model
#text2workspace.py -m 125 -P HiggsAnalysis.CombinedLimit.HiggsCouplings:cVcF comb_ggtt.txt -o comb_ggtt_kvkf.root

# Run 1D fits for CV and CF using combined Hgg+Htt
combine -M MultiDimFit -m 125 --setPhysicsModelParameterRanges CV=0.0,5.0:CF=0.0,5.0 comb_ggtt_kvkf.root --algo=singles --robustFit=1

# --- MultiDimFit ---
# best fit parameter values and profile-likelihood uncertainties:
#    CV :    +0.948   -0.175/+0.158 (68%)
#    CF :    +0.989   -0.319/+0.263 (68%)

# Make 2D scan for combined hgg and htt in a reasonable range (takes a couple minutes)
combine -n HggttCvCf -M MultiDimFit -m 125 --setPhysicsModelParameterRanges CV=0.0,2.0:CF=0.0,2.0 comb_ggtt_kvkf.root --algo=grid --points=400

