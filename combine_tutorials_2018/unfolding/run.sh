

text2workspace.py -P HiggsAnalysis.CombinedLimit.PhysicsModel:multiSignalModel  --PO verbose \
      --PO 'map=.*/InsideAcceptance_genPt_0p0to15p0:r_0p0to15p0[1,0,3]' \
      --PO 'map=.*/InsideAcceptance_genPt_15p0to30p0:r_15p0to30p0[1,0,3]' \
      --PO 'map=.*/InsideAcceptance_genPt_30p0to45p0:r_30p0to45p0[1,0,3]' \
      --PO 'map=.*/InsideAcceptance_genPt_45p0to85p0:r_45p0to85p0[1,0,3]' \
      --PO 'map=.*/InsideAcceptance_genPt_85p0to125p0:r_85p0to125p0[1,0,3]' \
      --PO 'map=.*/InsideAcceptance_genPt_125p0to200p0:r_125p0to200p0[1,0,3]' \
      --PO 'map=.*/InsideAcceptance_genPt_200p0to350p0:r_200p0to350p0[1,0,3]' \
      --PO 'map=.*/InsideAcceptance_genPt_350p0to10000p0:r_350p0to10000p0[1,0,3]' \
      --PO 'higgsMassRange=123,127' \
      Datacard_13TeV_differential_pT_moriond17_reminiaod_extrabin_corrections.txt -o Datacard_PtH.root


combine -M MultiDimFit -n BestFit -m 125 Datacard_PtH.root  --saveWorkspace --saveFitResult --cminDefaultMinimizerStrategy 0

freezeEnvelope=$(getCommaSeparatedListOfVariablesToFreeze.py higgsCombineBestFit.MultiDimFit.mH125.root 2>/dev/null),

for poi in "r_0p0to15p0" "r_15p0to30p0" "r_30p0to45p0" "r_45p0to85p0" "r_85p0to125p0" "r_125p0to200p0" "r_200p0to350p0" "r_350p0to10000p0"
do
combine -M MultiDimFit -n Scan${poi} -m 125 -d higgsCombineBestFit.MultiDimFit.mH125.root -w w --snapshotName MultiDimFit --skipInitialFit -P $poi --floatOtherPOIs 1 --algo=grid --points 30 --saveInactivePOI=1 --cminDefaultMinimizerStrategy 0 --freezeParameters $freezeEnvelope
done

for poi in "r_0p0to15p0" "r_15p0to30p0" "r_30p0to45p0" "r_45p0to85p0" "r_85p0to125p0" "r_125p0to200p0" "r_200p0to350p0" "r_350p0to10000p0"
do
plot1DScan.py higgsCombineScan${poi}.MultiDimFit.mH125.root --main-label $poi --POI $poi --output scan_${poi}
done

combine -M MultiDimFit -n BestFitFreezeDiscrete -m 125 -d  higgsCombineBestFit.MultiDimFit.mH125.root -w w --snapshotName MultiDimFit --freezeParameters $freezeEnvelope --cminFallbackAlgo Minuit2,Migrad,1:1.0 --robustHesse 1

python plotCorrelationFromRobustHesse.py -l -q -b

python plotCorrelationFromRobustScan.py -l -q -b
