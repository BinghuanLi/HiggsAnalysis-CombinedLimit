import ROOT as r

gStyle.SetOptStat(0)
gStyle.SetOptTitle(0)

f = r.TFile("comb_2017_htt_slim_shapes.root","READ")

ch = "htt_mt_2_13TeV"

c1 = r.TCanvas(ch,ch,800,800)
c1.SetLogy()
c1.SetBottomMargin(0.4)
c1.cd()

total_bkg_pre = f.Get(ch+"_prefit/TotalBkg")
total_bkg_pre.SetLineColor(4)
total_bkg_pre.SetFillColor(4)
total_bkg_pre.SetMarkerColor(4)
total_bkg_pre.GetXaxis().SetTitle("Bin Number")
total_bkg_pre.GetYaxis().SetTitle("Number of Events")
total_bkg_pre.Draw("ae2")

total_bkg_post = f.Get(ch+"_postfit/TotalBkg")
total_bkg_post.SetLineColor(2)
total_bkg_post.SetFillColor(2)
total_bkg_post.Draw("e2same")


c1.SaveAs(ch+".pdf")

#others = []
#QCD

