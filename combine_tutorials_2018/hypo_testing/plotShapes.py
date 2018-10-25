import ROOT as r

r.gStyle.SetOptTitle(0)
r.gStyle.SetOptStat(0)

f = r.TFile("jcp_hwwof_0j.input_8TeV.root","READ")

c1 = r.TCanvas("c1","c1",800,800)
c1.cd()

histo_ggH = f.Get("histo_ggH")
histo_ggH.SetLineColor(2)
histo_ggH.GetXaxis().SetRangeUser(-1.0,0.0)
histo_ggH.DrawNormalized("hist")

histo_ggH_ALT = f.Get("histo_ggH_ALT")
histo_ggH_ALT.SetLineColor(4)
histo_ggH_ALT.DrawNormalized("histsame")

histo_qqWW = f.Get("histo_qqWW")
histo_qqWW.SetLineColor(1)
histo_qqWW.DrawNormalized("histsame")


legend = r.TLegend(0.6,0.8,0.95,0.95)
legend.AddEntry(histo_qqWW,"qqWW Bkg")
legend.AddEntry(histo_ggH,"ggH SM")
legend.AddEntry(histo_ggH_ALT,"ggH 2_{m}^{+}")
legend.Draw("same")

c1.SaveAs("shape_smh_vs_2mp.pdf")
