#!/bin/bash
if [ -f ../combine_intro/hgg.inputbkgdata_8TeV_MVA.root ]
then 
  ln -s ../combine_intro/hgg.inputbkgdata_8TeV_MVA.root hgg.inputbkgdata_8TeV_MVA.root
else
  wget https://dsperka.web.cern.ch/dsperka/hgg.inputbkgdata_8TeV_MVA.root
fi

wget https://dsperka.web.cern.ch/dsperka/htt_mt.input_8TeV.root