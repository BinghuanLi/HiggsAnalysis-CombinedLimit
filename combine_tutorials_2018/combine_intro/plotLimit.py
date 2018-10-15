from ROOT import *
from tdrStyle import *
setTDRStyle()
        
import os,sys,glob
from array import array

unsortedmass = []

mass = array('d',[])
zeros = array('d',[])
exp_p2 = array('d',[])
exp_p1 = array('d',[])
exp = array('d',[])
exp_m1 = array('d',[])
exp_m2 = array('d',[])
obs = array('d',[])


files=glob.glob("results_hgg_asymptotic/higgsCombineLimitTest.Asymptotic.mH*.root")
for afile in files:
    m = afile.split('mH')[1].replace('.root','')    
    unsortedmass.append(float(m))
unsortedmass.sort()

for m in unsortedmass:
    
    mass.append(m)

    f = TFile("results_hgg_asymptotic/higgsCombineLimitTest.Asymptotic.mH"+str(m).replace('.0','')+".root","READ")
    t = f.Get("limit")

    zeros.append(0.0)
    
    t.GetEntry(2)
    thisexp = t.limit
    exp.append(thisexp)
    
    t.GetEntry(0)
    exp_m2.append(thisexp-t.limit)

    t.GetEntry(1)
    exp_m1.append(thisexp-t.limit)

    t.GetEntry(3)
    exp_p1.append(t.limit-thisexp)

    t.GetEntry(4)
    exp_p2.append(t.limit-thisexp)

    t.GetEntry(5)
    obs.append(t.limit)

v_mass = TVectorD(len(mass),mass)
v_zeros = TVectorD(len(zeros),zeros)
v_exp_p2 = TVectorD(len(exp_p2),exp_p2)
v_exp_p1 = TVectorD(len(exp_p1),exp_p1)
v_exp = TVectorD(len(exp),exp)
v_exp_m1 = TVectorD(len(exp_m1),exp_m1)
v_exp_m2 = TVectorD(len(exp_m2),exp_m2)
v_obs = TVectorD(len(obs),obs)

c = TCanvas("c","c",800, 800)
c.SetGridx()
c.SetGridy()

c.SetRightMargin(0.06)
c.SetLeftMargin(0.2)

dummy = TH1D("dummy","dummy", 1, 115,145)
dummy.SetBinContent(1,0.0)
dummy.GetXaxis().SetTitle('m(H) [GeV]')   
dummy.GetYaxis().SetTitle('#sigma/#sigma_{SM}')   
dummy.SetLineColor(0)
dummy.SetLineWidth(0)
dummy.SetFillColor(0)
dummy.SetMinimum(0.0)
dummy.SetMaximum(5.0)
dummy.Draw()

gr_exp2 = TGraphAsymmErrors(v_mass,v_exp,v_zeros,v_zeros,v_exp_m2,v_exp_p2)
gr_exp2.SetLineColor(kYellow)
gr_exp2.SetFillColor(kYellow)
gr_exp2.Draw("e3same")

gr_exp1 = TGraphAsymmErrors(v_mass,v_exp,v_zeros,v_zeros,v_exp_m1,v_exp_p1)
gr_exp1.SetLineColor(kGreen)
gr_exp1.SetFillColor(kGreen)
gr_exp1.Draw("e3same")

gr_exp = TGraphAsymmErrors(v_mass,v_exp,v_zeros,v_zeros,v_zeros,v_zeros)
gr_exp.SetLineColor(1)
gr_exp.SetLineWidth(2)
gr_exp.SetLineStyle(2)
gr_exp.Draw("Lsame")

gr_obs = TGraphAsymmErrors(v_mass,v_obs,v_zeros,v_zeros,v_zeros,v_zeros)
gr_obs.SetLineColor(1)
gr_obs.SetLineWidth(2)
gr_obs.Draw("CPsame")

latex2 = TLatex()
latex2.SetNDC()
latex2.SetTextSize(0.5*c.GetTopMargin())
latex2.SetTextFont(42)
latex2.SetTextAlign(31) # align right
latex2.DrawLatex(0.87, 0.95,"19.6 fb^{-1} (8 TeV)")
latex2.SetTextSize(0.9*c.GetTopMargin())
latex2.SetTextFont(62)
latex2.SetTextAlign(11) # align right
latex2.DrawLatex(0.25, 0.85, "CMS")
latex2.SetTextSize(0.7*c.GetTopMargin())
latex2.SetTextFont(52)
latex2.SetTextAlign(11)
latex2.DrawLatex(0.25, 0.8, "Tutorial")

legend = TLegend(.60,.70,.90,.90)
legend.AddEntry(gr_obs , "Observed 95% CL", "l")
legend.AddEntry(gr_exp , "Expected 95% CL", "l")
legend.AddEntry(gr_exp1 , "#pm 1#sigma", "f")
legend.AddEntry(gr_exp2 , "#pm 2#sigma", "f")
legend.SetShadowColor(0)
legend.SetFillColor(0)
legend.SetLineColor(0)            
legend.Draw("same")
                                                            
gPad.RedrawAxis()

c.SaveAs("limit.pdf")
