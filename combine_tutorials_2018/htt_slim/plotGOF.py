import ROOT

f = ROOT.TFile('merged_higgsCombinehtt_TestToys.GoodnessOfFit.mH125.09.root')
t = f.Get('limit')
c = ROOT.TCanvas()
vals = []
for e in range(t.GetEntries()):
    t.GetEntry(e)
    vals.append(t.limit)

t.Draw('limit>>hist(160,0,800)')
hist = ROOT.gDirectory.Get('hist')
hist.SetTitle('Test-statistic distribution')
hist.Draw("HIST")

fobs = ROOT.TFile('higgsCombinehtt_Test.GoodnessOfFit.mH125.09.root')
tobs = fobs.Get('limit')
tobs.GetEntry(0)
obs = tobs.limit

pval = sum(1.0 for i in vals if i >= obs) / float(len(vals))

arr = ROOT.TArrow(obs, 0.001, obs, hist.GetMaximum()/4, 0.02, "<|")
arr.SetLineColor(ROOT.kBlue)
arr.SetFillColor(ROOT.kBlue)
arr.SetFillStyle(1001)
arr.SetLineWidth(6)
arr.SetLineStyle(1)
arr.SetAngle(60)
arr.Draw("<|same")

c.SaveAs("saturated_gof.pdf")

print 'p-value for obs=%f is %f' % (obs, pval)
