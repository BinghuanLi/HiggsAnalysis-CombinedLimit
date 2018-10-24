import ROOT as r

fobs = r.TFile("higgsCombineBestFit_Toys1_1.Significance.mH125.123456.root","READ")
tobs = fobs.Get("limit")
tobs.GetEntry(0)
signif_obs = tobs.limit

ftoys  = r.TFile("btoys_significance.root","READ")
ttoys = ftoys.Get("limit")

n_extreme = 0

ntoys = ttoys.GetEntries("mh==110")
toy = 1
while (toy<=ntoys):

  if (ttoys.GetEntries("iToy=="+str(toy)+" && limit>="+str(signif_obs))>0):
    n_extreme+=1

  toy+=1

pval = float(n_extreme)/float(ntoys)

gaus = r.TF1("gaus","gaus",-20.0,20.0)
gaus.SetParameters(1.0,0.0,1.0)
z = 0.0
while (z<2.0):

  p = 1.0-gaus.Integral(-20.0,z)/gaus.Integral(-20.0,20.0)
  if (p<pval):
    break

  z+=0.01


print "pvalue",pval,"Z score",z
