#!/bin/bash

combineCards.py control_region_scaled.txt signal_region_scaled.txt > combined_card.txt  

text2workspace.py combined_card.txt --X-nuisance-function '.*' 'expr::lumisyst("1/sqrt(@0)",luminosity[1])' -o all_scaled.root

# scale for different luminosities 

exit

combine all_scaled.root -M Asymptotic --noFitAsimov --setPhysicsModelParameters luminosity=1  --trackParameters luminosity -n allscaled_1

combine all_scaled.root -M Asymptotic --noFitAsimov --setPhysicsModelParameters luminosity=10  --trackParameters luminosity -n allscaled_10


combine all_scaled.root -M Asymptotic --noFitAsimov --setPhysicsModelParameters luminosity=50  --trackParameters luminosity -n allscaled_50


combine all_scaled.root -M Asymptotic --noFitAsimov --setPhysicsModelParameters luminosity=100  --trackParameters luminosity -n allscaled_100

hadd -f lims_all_scaled.root higgsCombineallscaled_*.root
