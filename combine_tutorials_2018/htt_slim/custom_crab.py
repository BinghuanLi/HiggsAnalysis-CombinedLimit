def custom_crab(config):
  print '>> Customising the crab config'
  from CRABClient.UserUtilities import config, getUsernameFromSiteDB
  config.Site.storageSite = 'T3_US_FNALLPC'
  #config.Site.blacklist = ['T3_US_Baylor','T2_EE_Estonia']
  config.Data.outLFNDirBase = '/store/user/%s/Combine_Tutorial_2018/' % (getUsernameFromSiteDB())
