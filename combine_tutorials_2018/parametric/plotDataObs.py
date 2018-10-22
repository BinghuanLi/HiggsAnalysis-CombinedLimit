import ROOT as r


f_hgg_bkgdata = r.TFile("toyhgg_in.root","READ")
w_hgg_bkgdata = f_hgg_bkgdata.Get("multipdf")

CMS_hgg_mass = w_hgg_bkgdata.var("CMS_hgg_mass")
hgg_plot_cat1 = CMS_hgg_mass.frame()

data_cat1 = w_hgg_bkgdata.data("roohist_data_mass_cat1_toy1_cutrange__CMS_hgg_mass")
data_cat1 = data_cat1.reduce("CMS_hgg_mass>130 || CMS_hgg_mass<120")

data_cat1.plotOn(hgg_plot_cat1)

#pdf_bkg_cat1 = w_hgg_bkgdata.pdf("pdf_data_pol_model_8TeV_cat1")
#pdf_bkg_cat1.plotOn(hgg_plot_cat1)

c3 = r.TCanvas()
hgg_plot_cat1.Draw()
c3.SaveAs("data_cat1.pdf")
