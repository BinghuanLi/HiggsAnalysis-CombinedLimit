import ROOT as r

r.gStyle.SetOptStat(0)
r.gStyle.SetOptTitle(0)

f = r.TFile("jcp_hww_post-fit_obs.qvals.root","READ")
q = f.Get("q")


hnull = r.TH1F("hnull","hnull",50,-10,10)
halt = r.TH1F("halt","halt",50,-10,10)

#hobs = r.TH1F("hobs","hobs",50,-10,10)

q.Draw("-2*q>>hnull","type<0","goff")
q.Draw("-2*q>>halt", "type>0","goff")

q.Draw("-2*q>>hobs", "type==0","goff")
qObs = r.gROOT.FindObject("hobs").GetMean();
qO = r.TArrow(qObs, hnull.GetMaximum(), qObs, 1, 0.05, "---|>");
qO.SetAngle(40)
qO.SetLineWidth(2)

print qObs
print "These Numbers Are just approximate and hard coded for this particular example!!!"
print "Use CLs from the combine printout for a precise value!"
print "p null",hnull.Integral(25,50)/hnull.Integral()
print "p alt",halt.Integral(25,50)/halt.Integral()
print "cls",(halt.Integral(25,50)/halt.Integral())/(hnull.Integral(25,50)/hnull.Integral())

c1 = r.TCanvas("c1","c1",800,800)
c1.cd()

hnull.SetLineColor(r.kBlue)
halt.SetLineColor(r.kOrange)
halt.GetXaxis().SetTitle("q=-2 ln ( L_{2^{+}_{m}} / L_{0^{+}} ) ")

halt.Draw()
hnull.Draw("same")
#hobs.Draw("same")
qO.Draw()
hnull.Draw("AxisSame")


legend = r.TLegend(0.55,0.6,0.85,0.85)
legend.AddEntry(hnull,"Expected for 0^{+}","l")
legend.AddEntry(halt,"Expected for 2^{+}_{m}","l")
legend.AddEntry(qO,"Observed","l")
legend.Draw("same")

c1.SaveAs("test_statistic_observed.pdf")

