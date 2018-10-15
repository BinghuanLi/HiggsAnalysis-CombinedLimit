from ROOT import *
from tdrStyle import *
setTDRStyle()
        
import os,sys,glob
from array import array

unsortedmass = []

mass = array('d',[])
zeros = array('d',[])
exp = array('d',[])
obs = array('d',[])

files=glob.glob("results_hgg_pvalue/higgsCombineSignifExp.ProfileLikelihood.mH*.root")
for afile in files:
    m = afile.split('mH')[1].replace('.root','')    
    unsortedmass.append(float(m))
unsortedmass.sort()

for m in unsortedmass:
    
    mass.append(m)

    f_exp = TFile("results_hgg_pvalue/higgsCombineSignifExp.ProfileLikelihood.mH"+str(m).replace('.0','')+".root","READ")
    t_exp = f_exp.Get("limit")    
    t_exp.GetEntry(0)
    exp.append(t_exp.limit)

    f_obs = TFile("results_hgg_pvalue/higgsCombineSignifObs.ProfileLikelihood.mH"+str(m).replace('.0','')+".root","READ")
    t_obs = f_obs.Get("limit")    
    t_obs.GetEntry(0)
    obs.append(t_obs.limit)

    zeros.append(0.0)

v_mass = TVectorD(len(mass),mass)
v_zeros = TVectorD(len(zeros),zeros)
v_exp = TVectorD(len(exp),exp)
v_obs = TVectorD(len(obs),obs)

c = TCanvas("c","c",800, 800)
c.SetLogy()

c.SetRightMargin(0.06)
c.SetLeftMargin(0.2)

dummy = TH1D("dummy","dummy", 1, 115,145)
dummy.SetBinContent(1,0.0)
dummy.GetXaxis().SetTitle('m(H) [GeV]')   
dummy.GetYaxis().SetTitle('Local p-value')   
dummy.SetLineColor(0)
dummy.SetLineWidth(0)
dummy.SetFillColor(0)
dummy.SetMinimum(0.0001)
dummy.SetMaximum(1.0)
dummy.Draw()

latexf = TLatex()
latexf.SetTextSize(0.4*c.GetTopMargin())
latexf.SetTextColor(2)
f1 = TF1("f1","0.15866",115,145)
f1.SetLineColor(2)
f1.SetLineWidth(2)
f1.Draw("lsame")
latexf.DrawLatex(116, 0.15866*1.1,"1#sigma")
f2 = TF1("f1","0.02275",115,145)
f2.SetLineColor(2)
f2.SetLineWidth(2)
f2.Draw("lsame")
latexf.DrawLatex(116, 0.02275*1.1,"2#sigma")
f3 = TF1("f1","0.0013499",115,145)
f3.SetLineColor(2)
f3.SetLineWidth(2)
f3.Draw("lsame")
latexf.DrawLatex(116, 0.0013499*1.1,"3#sigma")


gr_exp = TGraphAsymmErrors(v_mass,v_exp,v_zeros,v_zeros,v_zeros,v_zeros)
gr_exp.SetLineColor(4)
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
latex2.SetTextSize(0.7*c.GetTopMargin())
latex2.SetTextFont(62)
latex2.SetTextAlign(11) # align right
latex2.DrawLatex(0.20, 0.95, "CMS")
latex2.SetTextSize(0.6*c.GetTopMargin())
latex2.SetTextFont(52)
latex2.SetTextAlign(11)
latex2.DrawLatex(0.32, 0.95, "Tutorial")

legend = TLegend(.40,.20,.90,.35)
legend.AddEntry(gr_obs , "Observed p-value", "l")
legend.AddEntry(gr_exp , "A-priori expected for SM", "l")
legend.SetShadowColor(0)
legend.SetFillColor(0)
legend.SetLineColor(0)            
legend.Draw("same")
                                                            
gPad.RedrawAxis()

c.SaveAs("pvalue.pdf")
