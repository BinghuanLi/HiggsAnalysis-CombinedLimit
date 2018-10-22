import ROOT as r

r.gStyle.SetOptStat(0)
r.gStyle.SetOptFit(1)

bias_matrix = r.TH2F("bias","bias",3,-0.5,2.5,3,-0.5,2.5)
bias_matrix.GetXaxis().SetTitle("pdf_index toys")
bias_matrix.GetYaxis().SetTitle("pdf_index fit")

for toy in ["0","1","2"]:
  for fit in ["0","1","2"]:

    f = r.TFile("higgsCombineFit"+str(toy)+"with"+str(fit)+".FitDiagnostics.mH125.123456.root","READ")
    t = f.Get("limit")

    h = r.TH1F("h","h",80,-4.0,4.0)
    t.Draw("(limit-1)/limitErr>>h","quantileExpected<0","goff")

    f1 = r.TF1("f1","gaus",-4.0,4.0)
    h.Fit(f1)

    c1 = r.TCanvas("c1","c1",1000,1000)
    c1.cd()

    h.SetTitle("Fit pdf_index="+str(toy)+" Toys with pdf_index="+str(fit))
    h.GetXaxis().SetTitle("(r-1)/#sigma_{r}")
    h.GetYaxis().SetTitle("Number of Toys")

    h.Draw()

    bin = bias_matrix.FindBin(int(toy),int(fit))

    print "toy",toy,"fit",fit,"mean",f1.GetParameter(1),"sigma",f1.GetParameter(2)

    bias_matrix.SetBinContent(bin,f1.GetParameter(1))

    c1.SaveAs("fit_"+str(toy)+"_with_"+str(fit)+".pdf")

c1 = r.TCanvas("c1","c1",1000,1000)
c1.cd()
bias_matrix.Draw("colztext")
c1.SaveAs("bias_matrix.pdf")

