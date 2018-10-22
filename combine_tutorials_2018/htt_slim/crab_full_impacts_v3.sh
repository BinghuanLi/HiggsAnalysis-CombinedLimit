
set -x
set -e
ulimit -s unlimited
ulimit -c 0

function error_exit
{
  if [ $1 -ne 0 ]; then
    echo "Error with exit code ${1}"
    if [ -e FrameworkJobReport.xml ]
    then
      cat << EOF > FrameworkJobReport.xml.tmp
      <FrameworkJobReport>
      <FrameworkError ExitStatus="${1}" Type="" >
      Error with exit code ${1}
      </FrameworkError>
EOF
      tail -n+2 FrameworkJobReport.xml >> FrameworkJobReport.xml.tmp
      mv FrameworkJobReport.xml.tmp FrameworkJobReport.xml
    else
      cat << EOF > FrameworkJobReport.xml
      <FrameworkJobReport>
      <FrameworkError ExitStatus="${1}" Type="" >
      Error with exit code ${1}
      </FrameworkError>
      </FrameworkJobReport>
EOF
    fi
    exit 0
  fi
}

trap 'error_exit $?' ERR

if [ $1 -eq 1 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_BR_htt_PU_alphas --algo impact --redefineSignalPOIs r -P BR_htt_PU_alphas --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 2 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_BR_htt_PU_mq --algo impact --redefineSignalPOIs r -P BR_htt_PU_mq --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 3 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_BR_htt_THU --algo impact --redefineSignalPOIs r -P BR_htt_THU --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 4 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_BR_hww_PU_alphas --algo impact --redefineSignalPOIs r -P BR_hww_PU_alphas --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 5 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_BR_hww_PU_mq --algo impact --redefineSignalPOIs r -P BR_hww_PU_mq --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 6 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_BR_hww_THU --algo impact --redefineSignalPOIs r -P BR_hww_THU --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 7 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_PS --algo impact --redefineSignalPOIs r -P CMS_PS --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 8 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_ZLShape_et_1prong1pizero_13TeV --algo impact --redefineSignalPOIs r -P CMS_ZLShape_et_1prong1pizero_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 9 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_ZLShape_et_1prong_13TeV --algo impact --redefineSignalPOIs r -P CMS_ZLShape_et_1prong_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 10 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_ZLShape_mt_1prong1pizero_13TeV --algo impact --redefineSignalPOIs r -P CMS_ZLShape_mt_1prong1pizero_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 11 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_ZLShape_mt_1prong_13TeV --algo impact --redefineSignalPOIs r -P CMS_ZLShape_mt_1prong_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 12 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_eFakeTau_1prong1pizero_13TeV --algo impact --redefineSignalPOIs r -P CMS_eFakeTau_1prong1pizero_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 13 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_eFakeTau_1prong_13TeV --algo impact --redefineSignalPOIs r -P CMS_eFakeTau_1prong_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 14 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_eff_b_13TeV --algo impact --redefineSignalPOIs r -P CMS_eff_b_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 15 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_eff_t_13TeV --algo impact --redefineSignalPOIs r -P CMS_eff_t_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 16 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_eff_t_et_13TeV --algo impact --redefineSignalPOIs r -P CMS_eff_t_et_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 17 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_eff_t_mt_13TeV --algo impact --redefineSignalPOIs r -P CMS_eff_t_mt_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 18 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_eff_t_tt_13TeV --algo impact --redefineSignalPOIs r -P CMS_eff_t_tt_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 19 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_eff_trigger_em_13TeV --algo impact --redefineSignalPOIs r -P CMS_eff_trigger_em_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 20 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_eff_trigger_et_13TeV --algo impact --redefineSignalPOIs r -P CMS_eff_trigger_et_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 21 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_eff_trigger_mt_13TeV --algo impact --redefineSignalPOIs r -P CMS_eff_trigger_mt_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 22 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_eff_trigger_tt_13TeV --algo impact --redefineSignalPOIs r -P CMS_eff_trigger_tt_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 23 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_QCD_0jet_em_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_QCD_0jet_em_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 24 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_QCD_0jet_tt_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_QCD_0jet_tt_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 25 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_QCD_VBF_em_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_QCD_VBF_em_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 26 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_QCD_VBF_tt_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_QCD_VBF_tt_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 27 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_QCD_boosted_em_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_QCD_boosted_em_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 28 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_QCD_boosted_tt_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_QCD_boosted_tt_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 29 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_dyShape_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_dyShape_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 30 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_eff_e --algo impact --redefineSignalPOIs r -P CMS_htt_eff_e --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 31 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_eff_m --algo impact --redefineSignalPOIs r -P CMS_htt_eff_m --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 32 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_jetFakeLep_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_jetFakeLep_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 33 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_jetToTauFake_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_jetToTauFake_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 34 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_scale_met_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_scale_met_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 35 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_ttbarShape_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_ttbarShape_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 36 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_vvXsec_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_vvXsec_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 37 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_wjXsec_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_wjXsec_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 38 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_zmm_norm_extrap_0jet_em_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_zmm_norm_extrap_0jet_em_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 39 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_zmm_norm_extrap_0jet_lt_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_zmm_norm_extrap_0jet_lt_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 40 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_zmm_norm_extrap_0jet_tt_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_zmm_norm_extrap_0jet_tt_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 41 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_zmm_norm_extrap_VBF_em_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_zmm_norm_extrap_VBF_em_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 42 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_zmm_norm_extrap_VBF_lt_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_zmm_norm_extrap_VBF_lt_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 43 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_zmm_norm_extrap_VBF_tt_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_zmm_norm_extrap_VBF_tt_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 44 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_zmm_norm_extrap_boosted_em_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_zmm_norm_extrap_boosted_em_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 45 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_zmm_norm_extrap_boosted_lt_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_zmm_norm_extrap_boosted_lt_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 46 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_zmm_norm_extrap_boosted_tt_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_zmm_norm_extrap_boosted_tt_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 47 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_htt_zmumuShape_VBF_13TeV --algo impact --redefineSignalPOIs r -P CMS_htt_zmumuShape_VBF_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 48 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_mFakeTau_1prong1pizero_13TeV --algo impact --redefineSignalPOIs r -P CMS_mFakeTau_1prong1pizero_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 49 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_mFakeTau_1prong_13TeV --algo impact --redefineSignalPOIs r -P CMS_mFakeTau_1prong_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 50 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_e_em_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_e_em_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 51 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_AbsoluteFlavMap_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_AbsoluteFlavMap_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 52 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_AbsoluteMPFBias_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_AbsoluteMPFBias_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 53 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_AbsoluteScale_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_AbsoluteScale_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 54 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_AbsoluteStat_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_AbsoluteStat_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 55 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_FlavorQCD_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_FlavorQCD_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 56 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_Fragmentation_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_Fragmentation_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 57 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_PileUpDataMC_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_PileUpDataMC_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 58 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_PileUpPtBB_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_PileUpPtBB_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 59 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_PileUpPtEC1_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_PileUpPtEC1_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 60 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_PileUpPtEC2_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_PileUpPtEC2_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 61 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_PileUpPtHF_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_PileUpPtHF_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 62 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_PileUpPtRef_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_PileUpPtRef_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 63 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_RelativeBal_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_RelativeBal_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 64 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_RelativeFSR_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_RelativeFSR_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 65 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_RelativeJEREC1_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_RelativeJEREC1_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 66 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_RelativeJEREC2_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_RelativeJEREC2_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 67 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_RelativeJERHF_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_RelativeJERHF_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 68 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_RelativePtBB_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_RelativePtBB_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 69 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_RelativePtEC1_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_RelativePtEC1_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 70 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_RelativePtEC2_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_RelativePtEC2_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 71 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_RelativePtHF_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_RelativePtHF_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 72 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_RelativeStatEC_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_RelativeStatEC_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 73 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_RelativeStatFSR_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_RelativeStatFSR_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 74 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_RelativeStatHF_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_RelativeStatHF_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 75 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_SinglePionECAL_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_SinglePionECAL_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 76 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_SinglePionHCAL_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_SinglePionHCAL_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 77 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_j_TimePtEta_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_j_TimePtEta_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 78 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_met --algo impact --redefineSignalPOIs r -P CMS_scale_met --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 79 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_met_unclustered_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_met_unclustered_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 80 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_t_1prong1pizero_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_t_1prong1pizero_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 81 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_t_1prong_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_t_1prong_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 82 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_scale_t_3prong_13TeV --algo impact --redefineSignalPOIs r -P CMS_scale_t_3prong_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 83 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_tauDMReco_1prong1pizero_13TeV --algo impact --redefineSignalPOIs r -P CMS_tauDMReco_1prong1pizero_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 84 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_tauDMReco_1prong_13TeV --algo impact --redefineSignalPOIs r -P CMS_tauDMReco_1prong_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 85 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_CMS_tauDMReco_3prong_13TeV --algo impact --redefineSignalPOIs r -P CMS_tauDMReco_3prong_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 86 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_QCD_Extrap_Iso_nonIso_et_13TeV --algo impact --redefineSignalPOIs r -P QCD_Extrap_Iso_nonIso_et_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 87 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_QCD_Extrap_Iso_nonIso_mt_13TeV --algo impact --redefineSignalPOIs r -P QCD_Extrap_Iso_nonIso_mt_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 88 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_QCDscale_qqH --algo impact --redefineSignalPOIs r -P QCDscale_qqH --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 89 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_THU_ggH_Mig01 --algo impact --redefineSignalPOIs r -P THU_ggH_Mig01 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 90 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_THU_ggH_Mig12 --algo impact --redefineSignalPOIs r -P THU_ggH_Mig12 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 91 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_THU_ggH_Mu --algo impact --redefineSignalPOIs r -P THU_ggH_Mu --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 92 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_THU_ggH_PT120 --algo impact --redefineSignalPOIs r -P THU_ggH_PT120 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 93 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_THU_ggH_PT60 --algo impact --redefineSignalPOIs r -P THU_ggH_PT60 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 94 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_THU_ggH_Res --algo impact --redefineSignalPOIs r -P THU_ggH_Res --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 95 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_THU_ggH_VBF2j --algo impact --redefineSignalPOIs r -P THU_ggH_VBF2j --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 96 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_THU_ggH_VBF3j --algo impact --redefineSignalPOIs r -P THU_ggH_VBF3j --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 97 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_THU_ggH_qmtop --algo impact --redefineSignalPOIs r -P THU_ggH_qmtop --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 98 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_WHighMTtoLowMT_0jet_13TeV --algo impact --redefineSignalPOIs r -P WHighMTtoLowMT_0jet_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 99 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_WHighMTtoLowMT_boosted_13TeV --algo impact --redefineSignalPOIs r -P WHighMTtoLowMT_boosted_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 100 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_WHighMTtoLowMT_vbf_13TeV --algo impact --redefineSignalPOIs r -P WHighMTtoLowMT_vbf_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 101 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_WSFUncert_et_0jet_13TeV --algo impact --redefineSignalPOIs r -P WSFUncert_et_0jet_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 102 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_WSFUncert_et_boosted_13TeV --algo impact --redefineSignalPOIs r -P WSFUncert_et_boosted_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 103 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_WSFUncert_et_vbf_13TeV --algo impact --redefineSignalPOIs r -P WSFUncert_et_vbf_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 104 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_WSFUncert_mt_0jet_13TeV --algo impact --redefineSignalPOIs r -P WSFUncert_mt_0jet_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 105 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_WSFUncert_mt_boosted_13TeV --algo impact --redefineSignalPOIs r -P WSFUncert_mt_boosted_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 106 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_WSFUncert_mt_vbf_13TeV --algo impact --redefineSignalPOIs r -P WSFUncert_mt_vbf_13TeV --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 107 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_lumi_13TeV_2016 --algo impact --redefineSignalPOIs r -P lumi_13TeV_2016 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 108 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_pdf_Higgs_gg --algo impact --redefineSignalPOIs r -P pdf_Higgs_gg --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 109 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_pdf_Higgs_qqbar --algo impact --redefineSignalPOIs r -P pdf_Higgs_qqbar --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 110 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 111 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin1 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin1 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 112 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin10 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin10 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 113 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin11 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin11 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 114 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin12 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin12 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 115 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin13 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin13 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 116 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin14 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin14 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 117 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin15 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin15 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 118 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin16 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin16 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 119 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin17 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin17 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 120 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin18 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin18 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 121 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin19 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin19 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 122 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin2 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin2 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 123 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin20 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin20 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 124 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin21 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin21 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 125 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin22 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin22 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 126 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin23 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin23 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 127 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin24 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin24 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 128 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin25 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin25 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 129 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin26 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin26 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 130 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin27 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin27 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 131 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin28 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin28 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 132 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin29 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin29 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 133 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin3 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin3 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 134 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin30 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin30 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 135 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin31 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin31 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 136 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin32 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin32 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 137 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin33 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin33 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 138 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin34 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin34 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 139 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin35 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin35 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 140 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin4 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin4 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 141 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin5 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin5 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 142 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin6 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin6 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 143 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin7 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin7 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 144 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin8 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin8 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 145 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_1_13TeV_bin9 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_1_13TeV_bin9 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 146 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 147 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin1 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin1 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 148 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin10 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin10 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 149 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin11 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin11 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 150 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin12 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin12 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 151 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin13 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin13 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 152 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin14 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin14 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 153 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin15 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin15 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 154 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin16 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin16 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 155 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin17 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin17 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 156 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin18 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin18 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 157 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin19 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin19 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 158 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin2 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin2 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 159 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin20 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin20 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 160 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin21 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin21 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 161 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin22 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin22 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 162 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin23 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin23 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 163 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin24 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin24 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 164 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin25 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin25 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 165 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin26 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin26 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 166 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin27 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin27 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 167 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin28 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin28 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 168 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin29 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin29 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 169 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin3 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin3 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 170 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin30 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin30 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 171 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin31 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin31 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 172 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin32 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin32 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 173 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin33 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin33 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 174 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin34 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin34 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 175 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin35 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin35 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 176 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin36 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin36 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 177 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin37 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin37 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 178 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin38 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin38 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 179 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin39 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin39 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 180 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin4 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin4 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 181 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin40 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin40 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 182 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin41 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin41 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 183 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin42 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin42 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 184 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin43 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin43 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 185 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin44 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin44 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 186 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin45 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin45 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 187 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin46 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin46 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 188 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin47 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin47 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 189 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin48 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin48 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 190 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin49 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin49 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 191 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin5 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin5 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 192 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin50 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin50 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 193 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin51 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin51 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 194 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin52 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin52 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 195 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin53 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin53 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 196 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin54 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin54 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 197 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin55 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin55 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 198 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin56 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin56 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 199 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin57 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin57 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 200 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin58 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin58 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 201 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin59 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin59 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 202 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin6 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin6 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 203 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin7 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin7 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 204 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin8 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin8 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 205 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_2_13TeV_bin9 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_2_13TeV_bin9 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 206 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_3_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_3_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 207 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_3_13TeV_bin1 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_3_13TeV_bin1 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 208 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_3_13TeV_bin10 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_3_13TeV_bin10 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 209 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_3_13TeV_bin11 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_3_13TeV_bin11 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 210 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_3_13TeV_bin12 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_3_13TeV_bin12 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 211 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_3_13TeV_bin13 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_3_13TeV_bin13 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 212 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_3_13TeV_bin14 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_3_13TeV_bin14 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 213 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_3_13TeV_bin15 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_3_13TeV_bin15 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 214 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_3_13TeV_bin16 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_3_13TeV_bin16 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 215 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_3_13TeV_bin17 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_3_13TeV_bin17 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 216 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_3_13TeV_bin18 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_3_13TeV_bin18 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 217 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_3_13TeV_bin19 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_3_13TeV_bin19 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 218 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_3_13TeV_bin2 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_3_13TeV_bin2 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 219 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_3_13TeV_bin3 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_3_13TeV_bin3 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 220 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_3_13TeV_bin4 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_3_13TeV_bin4 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 221 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_3_13TeV_bin5 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_3_13TeV_bin5 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 222 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_3_13TeV_bin6 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_3_13TeV_bin6 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 223 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_3_13TeV_bin7 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_3_13TeV_bin7 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 224 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_3_13TeV_bin8 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_3_13TeV_bin8 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 225 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_em_3_13TeV_bin9 --algo impact --redefineSignalPOIs r -P prop_binhtt_em_3_13TeV_bin9 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 226 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_10_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_10_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 227 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_11_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_11_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 228 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_13_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_13_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 229 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_13_13TeV_bin1 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_13_13TeV_bin1 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 230 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_13_13TeV_bin2 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_13_13TeV_bin2 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 231 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_13_13TeV_bin3 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_13_13TeV_bin3 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 232 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_14_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_14_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 233 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_14_13TeV_bin1 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_14_13TeV_bin1 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 234 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_14_13TeV_bin2 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_14_13TeV_bin2 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 235 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_14_13TeV_bin3 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_14_13TeV_bin3 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 236 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 237 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin1 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin1 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 238 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin10 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin10 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 239 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin11 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin11 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 240 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin12 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin12 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 241 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin13 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin13 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 242 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin14 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin14 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 243 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin15 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin15 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 244 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin16 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin16 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 245 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin17 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin17 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 246 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin18 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin18 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 247 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin19 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin19 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 248 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin2 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin2 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 249 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin20 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin20 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 250 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin21 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin21 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 251 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin22 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin22 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 252 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin23 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin23 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 253 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin24 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin24 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 254 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin25 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin25 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 255 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin26 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin26 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 256 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin27 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin27 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 257 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin28 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin28 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 258 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin29 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin29 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 259 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin3 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin3 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 260 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin30 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin30 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 261 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin31 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin31 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 262 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin32 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin32 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 263 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin33 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin33 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 264 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin34 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin34 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 265 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin35 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin35 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 266 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin4 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin4 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 267 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin5 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin5 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 268 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin6 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin6 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 269 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin7 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin7 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 270 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin8 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin8 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 271 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_1_13TeV_bin9 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_1_13TeV_bin9 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 272 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 273 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin1 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin1 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 274 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin10 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin10 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 275 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin11 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin11 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 276 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin12 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin12 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 277 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin13 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin13 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 278 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin14 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin14 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 279 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin15 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin15 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 280 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin16 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin16 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 281 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin17 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin17 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 282 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin18 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin18 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 283 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin19 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin19 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 284 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin2 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin2 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 285 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin20 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin20 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 286 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin21 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin21 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 287 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin22 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin22 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 288 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin23 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin23 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 289 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin24 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin24 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 290 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin25 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin25 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 291 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin26 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin26 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 292 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin27 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin27 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 293 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin28 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin28 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 294 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin29 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin29 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 295 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin3 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin3 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 296 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin30 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin30 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 297 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin31 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin31 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 298 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin32 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin32 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 299 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin33 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin33 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 300 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin34 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin34 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 301 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin35 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin35 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 302 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin36 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin36 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 303 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin37 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin37 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 304 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin38 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin38 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 305 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin39 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin39 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 306 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin4 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin4 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 307 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin40 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin40 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 308 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin41 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin41 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 309 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin42 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin42 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 310 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin43 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin43 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 311 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin44 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin44 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 312 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin45 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin45 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 313 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin46 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin46 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 314 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin47 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin47 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 315 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin48 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin48 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 316 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin49 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin49 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 317 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin5 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin5 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 318 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin50 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin50 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 319 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin51 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin51 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 320 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin52 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin52 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 321 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin53 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin53 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 322 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin54 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin54 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 323 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin55 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin55 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 324 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin56 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin56 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 325 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin57 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin57 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 326 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin58 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin58 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 327 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin59 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin59 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 328 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin6 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin6 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 329 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin7 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin7 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 330 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin8 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin8 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 331 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_2_13TeV_bin9 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_2_13TeV_bin9 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 332 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_3_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_3_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 333 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_3_13TeV_bin1 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_3_13TeV_bin1 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 334 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_3_13TeV_bin10 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_3_13TeV_bin10 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 335 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_3_13TeV_bin11 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_3_13TeV_bin11 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 336 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_3_13TeV_bin12 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_3_13TeV_bin12 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 337 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_3_13TeV_bin13 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_3_13TeV_bin13 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 338 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_3_13TeV_bin14 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_3_13TeV_bin14 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 339 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_3_13TeV_bin15 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_3_13TeV_bin15 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 340 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_3_13TeV_bin16 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_3_13TeV_bin16 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 341 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_3_13TeV_bin17 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_3_13TeV_bin17 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 342 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_3_13TeV_bin18 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_3_13TeV_bin18 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 343 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_3_13TeV_bin19 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_3_13TeV_bin19 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 344 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_3_13TeV_bin2 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_3_13TeV_bin2 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 345 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_3_13TeV_bin3 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_3_13TeV_bin3 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 346 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_3_13TeV_bin4 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_3_13TeV_bin4 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 347 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_3_13TeV_bin5 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_3_13TeV_bin5 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 348 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_3_13TeV_bin6 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_3_13TeV_bin6 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 349 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_3_13TeV_bin7 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_3_13TeV_bin7 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 350 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_3_13TeV_bin8 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_3_13TeV_bin8 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 351 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_et_3_13TeV_bin9 --algo impact --redefineSignalPOIs r -P prop_binhtt_et_3_13TeV_bin9 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 352 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_10_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_10_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 353 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_11_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_11_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 354 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_13_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_13_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 355 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_13_13TeV_bin1 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_13_13TeV_bin1 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 356 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_13_13TeV_bin2 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_13_13TeV_bin2 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 357 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_13_13TeV_bin3 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_13_13TeV_bin3 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 358 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_14_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_14_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 359 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_14_13TeV_bin1 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_14_13TeV_bin1 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 360 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_14_13TeV_bin2 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_14_13TeV_bin2 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 361 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_14_13TeV_bin3 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_14_13TeV_bin3 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 362 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 363 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin1 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin1 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 364 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin10 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin10 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 365 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin11 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin11 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 366 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin12 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin12 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 367 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin13 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin13 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 368 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin14 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin14 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 369 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin15 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin15 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 370 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin16 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin16 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 371 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin17 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin17 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 372 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin18 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin18 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 373 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin19 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin19 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 374 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin2 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin2 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 375 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin20 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin20 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 376 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin21 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin21 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 377 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin22 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin22 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 378 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin23 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin23 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 379 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin24 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin24 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 380 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin25 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin25 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 381 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin26 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin26 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 382 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin27 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin27 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 383 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin28 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin28 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 384 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin29 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin29 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 385 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin3 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin3 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 386 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin30 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin30 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 387 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin31 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin31 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 388 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin32 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin32 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 389 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin33 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin33 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 390 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin34 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin34 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 391 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin35 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin35 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 392 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin4 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin4 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 393 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin5 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin5 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 394 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin6 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin6 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 395 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin7 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin7 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 396 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin8 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin8 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 397 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_1_13TeV_bin9 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_1_13TeV_bin9 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 398 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 399 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin1 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin1 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 400 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin10 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin10 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 401 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin11 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin11 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 402 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin12 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin12 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 403 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin13 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin13 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 404 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin14 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin14 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 405 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin15 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin15 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 406 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin16 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin16 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 407 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin17 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin17 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 408 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin18 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin18 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 409 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin19 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin19 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 410 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin2 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin2 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 411 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin20 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin20 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 412 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin21 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin21 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 413 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin22 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin22 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 414 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin23 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin23 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 415 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin24 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin24 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 416 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin25 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin25 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 417 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin26 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin26 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 418 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin27 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin27 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 419 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin28 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin28 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 420 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin29 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin29 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 421 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin3 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin3 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 422 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin30 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin30 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 423 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin31 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin31 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 424 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin32 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin32 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 425 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin33 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin33 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 426 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin34 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin34 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 427 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin35 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin35 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 428 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin36 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin36 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 429 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin37 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin37 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 430 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin38 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin38 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 431 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin39 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin39 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 432 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin4 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin4 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 433 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin40 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin40 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 434 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin41 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin41 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 435 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin42 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin42 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 436 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin43 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin43 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 437 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin44 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin44 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 438 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin45 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin45 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 439 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin46 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin46 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 440 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin47 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin47 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 441 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin48 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin48 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 442 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin49 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin49 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 443 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin5 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin5 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 444 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin50 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin50 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 445 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin51 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin51 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 446 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin52 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin52 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 447 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin53 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin53 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 448 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin54 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin54 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 449 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin55 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin55 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 450 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin56 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin56 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 451 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin57 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin57 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 452 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin58 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin58 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 453 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin59 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin59 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 454 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin6 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin6 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 455 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin7 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin7 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 456 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin8 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin8 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 457 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_2_13TeV_bin9 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_2_13TeV_bin9 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 458 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_3_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_3_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 459 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_3_13TeV_bin1 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_3_13TeV_bin1 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 460 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_3_13TeV_bin10 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_3_13TeV_bin10 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 461 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_3_13TeV_bin11 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_3_13TeV_bin11 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 462 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_3_13TeV_bin12 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_3_13TeV_bin12 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 463 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_3_13TeV_bin13 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_3_13TeV_bin13 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 464 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_3_13TeV_bin14 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_3_13TeV_bin14 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 465 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_3_13TeV_bin15 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_3_13TeV_bin15 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 466 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_3_13TeV_bin16 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_3_13TeV_bin16 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 467 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_3_13TeV_bin17 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_3_13TeV_bin17 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 468 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_3_13TeV_bin18 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_3_13TeV_bin18 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 469 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_3_13TeV_bin19 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_3_13TeV_bin19 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 470 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_3_13TeV_bin2 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_3_13TeV_bin2 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 471 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_3_13TeV_bin3 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_3_13TeV_bin3 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 472 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_3_13TeV_bin4 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_3_13TeV_bin4 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 473 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_3_13TeV_bin5 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_3_13TeV_bin5 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 474 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_3_13TeV_bin6 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_3_13TeV_bin6 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 475 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_3_13TeV_bin7 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_3_13TeV_bin7 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 476 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_3_13TeV_bin8 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_3_13TeV_bin8 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 477 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_mt_3_13TeV_bin9 --algo impact --redefineSignalPOIs r -P prop_binhtt_mt_3_13TeV_bin9 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 478 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_10_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_10_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 479 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_11_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_11_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 480 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_12_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_12_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 481 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 482 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin1 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin1 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 483 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin10 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin10 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 484 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin11 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin11 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 485 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin12 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin12 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 486 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin13 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin13 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 487 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin14 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin14 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 488 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin15 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin15 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 489 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin16 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin16 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 490 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin17 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin17 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 491 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin18 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin18 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 492 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin19 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin19 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 493 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin2 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin2 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 494 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin20 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin20 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 495 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin21 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin21 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 496 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin22 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin22 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 497 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin23 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin23 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 498 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin24 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin24 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 499 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin25 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin25 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 500 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin3 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin3 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 501 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin4 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin4 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 502 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin5 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin5 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 503 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin6 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin6 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 504 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin7 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin7 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 505 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin8 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin8 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 506 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_1_13TeV_bin9 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_1_13TeV_bin9 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 507 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 508 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin1 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin1 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 509 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin10 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin10 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 510 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin11 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin11 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 511 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin12 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin12 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 512 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin13 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin13 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 513 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin14 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin14 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 514 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin15 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin15 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 515 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin16 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin16 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 516 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin17 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin17 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 517 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin18 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin18 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 518 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin19 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin19 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 519 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin2 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin2 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 520 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin20 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin20 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 521 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin21 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin21 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 522 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin22 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin22 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 523 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin23 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin23 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 524 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin24 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin24 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 525 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin25 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin25 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 526 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin26 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin26 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 527 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin27 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin27 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 528 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin28 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin28 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 529 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin29 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin29 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 530 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin3 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin3 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 531 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin30 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin30 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 532 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin31 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin31 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 533 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin32 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin32 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 534 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin33 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin33 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 535 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin34 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin34 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 536 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin35 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin35 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 537 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin36_QCD --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin36_QCD --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 538 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin37_QCD --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin37_QCD --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 539 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin37_ZH_lep_htt --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin37_ZH_lep_htt --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 540 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin38 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin38 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 541 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin39 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin39 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 542 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin4 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin4 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 543 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin40 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin40 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 544 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin41 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin41 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 545 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin42 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin42 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 546 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin43 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin43 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 547 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin44 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin44 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 548 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin45 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin45 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 549 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin46 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin46 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 550 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin47 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin47 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 551 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin5 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin5 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 552 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin6 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin6 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 553 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin7 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin7 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 554 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin8 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin8 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 555 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_2_13TeV_bin9 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_2_13TeV_bin9 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 556 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 557 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin1 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin1 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 558 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin10 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin10 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 559 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin11 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin11 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 560 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin12 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin12 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 561 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin13 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin13 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 562 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin14 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin14 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 563 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin15 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin15 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 564 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin16 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin16 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 565 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin17 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin17 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 566 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin18 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin18 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 567 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin19 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin19 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 568 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin2 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin2 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 569 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin20 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin20 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 570 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin21 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin21 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 571 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin22 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin22 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 572 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin23 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin23 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 573 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin24 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin24 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 574 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin25 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin25 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 575 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin26 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin26 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 576 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin27 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin27 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 577 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin28 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin28 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 578 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin29 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin29 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 579 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin3 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin3 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 580 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin30 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin30 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 581 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin31 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin31 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 582 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin32 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin32 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 583 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin33 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin33 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 584 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin34 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin34 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 585 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin35 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin35 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 586 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin36 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin36 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 587 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin37 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin37 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 588 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin38 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin38 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 589 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin39 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin39 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 590 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin4 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin4 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 591 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin40 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin40 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 592 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin41 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin41 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 593 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin42 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin42 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 594 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin43 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin43 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 595 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin44 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin44 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 596 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin45 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin45 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 597 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin46 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin46 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 598 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin47 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin47 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 599 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin5 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin5 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 600 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin6 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin6 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 601 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin7 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin7 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 602 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin8 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin8 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 603 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_tt_3_13TeV_bin9 --algo impact --redefineSignalPOIs r -P prop_binhtt_tt_3_13TeV_bin9 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 604 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_prop_binhtt_ttbar_1_13TeV_bin0 --algo impact --redefineSignalPOIs r -P prop_binhtt_ttbar_1_13TeV_bin0 --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 605 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_rate_QCD_cr_0jet_et --algo impact --redefineSignalPOIs r -P rate_QCD_cr_0jet_et --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 606 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_rate_QCD_cr_0jet_mt --algo impact --redefineSignalPOIs r -P rate_QCD_cr_0jet_mt --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 607 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_rate_QCD_cr_0jet_tt --algo impact --redefineSignalPOIs r -P rate_QCD_cr_0jet_tt --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 608 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_rate_QCD_cr_boosted_et --algo impact --redefineSignalPOIs r -P rate_QCD_cr_boosted_et --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 609 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_rate_QCD_cr_boosted_mt --algo impact --redefineSignalPOIs r -P rate_QCD_cr_boosted_mt --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 610 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_rate_QCD_cr_boosted_tt --algo impact --redefineSignalPOIs r -P rate_QCD_cr_boosted_tt --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 611 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_rate_QCD_cr_vbf_tt --algo impact --redefineSignalPOIs r -P rate_QCD_cr_vbf_tt --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 612 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_rate_W_cr_0jet_et --algo impact --redefineSignalPOIs r -P rate_W_cr_0jet_et --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 613 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_rate_W_cr_0jet_mt --algo impact --redefineSignalPOIs r -P rate_W_cr_0jet_mt --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 614 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_rate_W_cr_boosted_et --algo impact --redefineSignalPOIs r -P rate_W_cr_boosted_et --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 615 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_rate_W_cr_boosted_mt --algo impact --redefineSignalPOIs r -P rate_W_cr_boosted_mt --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
if [ $1 -eq 616 ]; then
  ./combine -M MultiDimFit -n _paramFit_FullImpacts_htt_slim_rate_ttbar --algo impact --redefineSignalPOIs r -P rate_ttbar --floatOtherPOIs 1 --saveInactivePOI 1 --setParameterRanges r=0.3,1.7 --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --robustFit 1 --robustHesse 1 -m 125.09 -d comb_2017_htt_slim.root
fi
tar -cf combine_output.tar higgsCombine*.root
rm higgsCombine*.root
