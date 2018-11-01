def custom_crab(config):
  print '>> Customising the crab config'
  config.JobType.allowUndistributedCMSSW = True
  config.Site.storageSite = 'T3_US_FNALLPC'
  #config.Site.blacklist = ['T3_US_Baylor','T2_EE_Estonia']
  config.Data.outLFNDirBase = '/store/user/dsperka/Combine_Tutorial_2018/'
  # YOU WILL NEED TO REPLACE MY USER NAME WITH YOUR OWN!!!
