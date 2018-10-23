import ROOT as r

r.gStyle.SetOptStat(0)
r.gStyle.SetPaintTextFormat("0.2f")

f = r.TFile("robustHesseBestFitFreezeDiscrete.root","READ")
h = f.Get("h_correlation")

corr = r.TH2F("corr","correlation",8,0,8,8,0,8)

nx = 0

for x in range(h.GetNbinsX()):

  ny = 0

  xlabel = h.GetXaxis().GetBinLabel(x)
  if (not xlabel.startswith("r_")): continue
  nx+=1

  for y in range(h.GetNbinsY()):

    ylabel = h.GetXaxis().GetBinLabel(y)
    if (not ylabel.startswith("r_")): continue
    ny+=1

    corr.GetXaxis().SetBinLabel(nx,xlabel)
    corr.GetYaxis().SetBinLabel(ny,ylabel)
    corr.SetBinContent(nx,ny,h.GetBinContent(x,y))
        
    print h.GetXaxis().GetBinLabel(x),h.GetXaxis().GetBinLabel(y),h.GetBinContent(x,y)

c1 = r.TCanvas("c1","c1",800,800)
c1.SetRightMargin(0.18)
c1.SetLeftMargin(0.2)

c1.cd()
corr.Draw("colztext")
c1.SaveAs("corr_from_robustHesse.pdf")
