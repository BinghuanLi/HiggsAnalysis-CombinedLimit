#!/bin/bash
text2workspace.py ttH_hbb_13TeV_sl_j5_tge4_high.txt

# 2 fits to the data
combine ttH_hbb_13TeV_sl_j5_tge4_high.root -M MaxLikelihoodFit --rMin -5 --rMax 5  

# run the same with toys 
combine ttH_hbb_13TeV_sl_j5_tge4_high.root -M MaxLikelihoodFit --toysFrequentist –t 200 --rMin -5 --rMax 5 --expectSignal 0 –n toys
