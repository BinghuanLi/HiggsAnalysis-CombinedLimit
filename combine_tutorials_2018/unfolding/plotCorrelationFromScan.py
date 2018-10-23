import ROOT as r

r.gStyle.SetOptStat(0)
r.gStyle.SetPaintTextFormat("0.2f")

corr = r.TH2F("corr","correlation",8,0,8,8,0,8)

nx = 0

for poi1 in ["r_0p0to15p0","r_15p0to30p0","r_30p0to45p0","r_45p0to85p0","r_85p0to125p0","r_125p0to200p0","r_200p0to350p0","r_350p0to10000p0"]:

  f1 = r.TFile("higgsCombineScan"+poi1+".MultiDimFit.mH125.root","READ")
  t1 = f1.Get("limit")

  nx+=1
  ny=0

  for poi2 in ["r_0p0to15p0","r_15p0to30p0","r_30p0to45p0","r_45p0to85p0","r_85p0to125p0","r_125p0to200p0","r_200p0to350p0","r_350p0to10000p0"]:


    f2 = r.TFile("higgsCombineScan"+poi2+".MultiDimFit.mH125.root","READ")
    t2 = f2.Get("limit")

    t1.Draw(poi2+":"+poi1,"2.0*deltaNLL<1.0")
    gr = r.gPad.GetPrimitive("Graph"); 
    pol1 = r.TF1("pol1","pol1",0.0,3.0)
    gr.Fit("pol1")
    corr1 = pol1.GetParameter(1)

    t2.Draw(poi1+":"+poi2,"2.0*deltaNLL<1.0")
    gr = r.gPad.GetPrimitive("Graph"); 
    pol1 = r.TF1("pol1","pol1",0.0,3.0)
    gr.Fit("pol1")
    corr2 = pol1.GetParameter(1)

    corr_ave = 0.5*(corr1+corr2)

    ny+=1

    corr.GetXaxis().SetBinLabel(nx,poi1)
    corr.GetYaxis().SetBinLabel(ny,poi2)
    corr.SetBinContent(nx,ny,corr_ave)
        
    print poi1,poi2,corr_ave

c1 = r.TCanvas("c1","c1",800,800)
c1.SetRightMargin(0.18)
c1.SetLeftMargin(0.2)

c1.cd()
corr.Draw("colztext")
c1.SaveAs("corr_from_scan.pdf")
