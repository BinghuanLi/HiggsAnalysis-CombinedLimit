
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
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.1 -s 1 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.1
fi
if [ $1 -eq 2 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.1 -s 2 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.1
fi
if [ $1 -eq 3 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.1 -s 3 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.1
fi
if [ $1 -eq 4 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.1 -s 4 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.1
fi
if [ $1 -eq 5 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.1 -s 5 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.1
fi
if [ $1 -eq 6 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.1 -s 6 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.1
fi
if [ $1 -eq 7 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.1 -s 7 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.1
fi
if [ $1 -eq 8 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.1 -s 8 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.1
fi
if [ $1 -eq 9 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.1 -s 9 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.1
fi
if [ $1 -eq 10 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.1 -s 10 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.1
fi
if [ $1 -eq 11 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.1 -s 11 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.1
fi
if [ $1 -eq 12 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.1 -s 12 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.1
fi
if [ $1 -eq 13 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.1 -s 13 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.1
fi
if [ $1 -eq 14 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.1 -s 14 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.1
fi
if [ $1 -eq 15 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.1 -s 15 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.1
fi
if [ $1 -eq 16 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.1 -s 16 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.1
fi
if [ $1 -eq 17 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.1 -s 17 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.1
fi
if [ $1 -eq 18 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.1 -s 18 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.1
fi
if [ $1 -eq 19 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.1 -s 19 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.1
fi
if [ $1 -eq 20 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.1 -s 20 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.1
fi
if [ $1 -eq 21 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.3 -s 1 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.3
fi
if [ $1 -eq 22 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.3 -s 2 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.3
fi
if [ $1 -eq 23 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.3 -s 3 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.3
fi
if [ $1 -eq 24 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.3 -s 4 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.3
fi
if [ $1 -eq 25 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.3 -s 5 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.3
fi
if [ $1 -eq 26 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.3 -s 6 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.3
fi
if [ $1 -eq 27 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.3 -s 7 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.3
fi
if [ $1 -eq 28 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.3 -s 8 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.3
fi
if [ $1 -eq 29 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.3 -s 9 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.3
fi
if [ $1 -eq 30 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.3 -s 10 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.3
fi
if [ $1 -eq 31 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.3 -s 11 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.3
fi
if [ $1 -eq 32 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.3 -s 12 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.3
fi
if [ $1 -eq 33 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.3 -s 13 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.3
fi
if [ $1 -eq 34 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.3 -s 14 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.3
fi
if [ $1 -eq 35 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.3 -s 15 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.3
fi
if [ $1 -eq 36 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.3 -s 16 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.3
fi
if [ $1 -eq 37 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.3 -s 17 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.3
fi
if [ $1 -eq 38 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.3 -s 18 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.3
fi
if [ $1 -eq 39 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.3 -s 19 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.3
fi
if [ $1 -eq 40 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.3 -s 20 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.3
fi
if [ $1 -eq 41 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.5 -s 1 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.5
fi
if [ $1 -eq 42 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.5 -s 2 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.5
fi
if [ $1 -eq 43 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.5 -s 3 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.5
fi
if [ $1 -eq 44 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.5 -s 4 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.5
fi
if [ $1 -eq 45 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.5 -s 5 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.5
fi
if [ $1 -eq 46 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.5 -s 6 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.5
fi
if [ $1 -eq 47 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.5 -s 7 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.5
fi
if [ $1 -eq 48 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.5 -s 8 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.5
fi
if [ $1 -eq 49 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.5 -s 9 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.5
fi
if [ $1 -eq 50 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.5 -s 10 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.5
fi
if [ $1 -eq 51 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.5 -s 11 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.5
fi
if [ $1 -eq 52 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.5 -s 12 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.5
fi
if [ $1 -eq 53 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.5 -s 13 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.5
fi
if [ $1 -eq 54 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.5 -s 14 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.5
fi
if [ $1 -eq 55 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.5 -s 15 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.5
fi
if [ $1 -eq 56 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.5 -s 16 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.5
fi
if [ $1 -eq 57 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.5 -s 17 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.5
fi
if [ $1 -eq 58 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.5 -s 18 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.5
fi
if [ $1 -eq 59 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.5 -s 19 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.5
fi
if [ $1 -eq 60 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.5 -s 20 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.5
fi
if [ $1 -eq 61 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.7 -s 1 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.7
fi
if [ $1 -eq 62 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.7 -s 2 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.7
fi
if [ $1 -eq 63 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.7 -s 3 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.7
fi
if [ $1 -eq 64 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.7 -s 4 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.7
fi
if [ $1 -eq 65 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.7 -s 5 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.7
fi
if [ $1 -eq 66 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.7 -s 6 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.7
fi
if [ $1 -eq 67 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.7 -s 7 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.7
fi
if [ $1 -eq 68 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.7 -s 8 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.7
fi
if [ $1 -eq 69 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.7 -s 9 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.7
fi
if [ $1 -eq 70 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.7 -s 10 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.7
fi
if [ $1 -eq 71 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.7 -s 11 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.7
fi
if [ $1 -eq 72 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.7 -s 12 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.7
fi
if [ $1 -eq 73 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.7 -s 13 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.7
fi
if [ $1 -eq 74 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.7 -s 14 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.7
fi
if [ $1 -eq 75 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.7 -s 15 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.7
fi
if [ $1 -eq 76 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.7 -s 16 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.7
fi
if [ $1 -eq 77 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.7 -s 17 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.7
fi
if [ $1 -eq 78 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.7 -s 18 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.7
fi
if [ $1 -eq 79 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.7 -s 19 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.7
fi
if [ $1 -eq 80 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.7 -s 20 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.7
fi
if [ $1 -eq 81 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.9 -s 1 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.9
fi
if [ $1 -eq 82 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.9 -s 2 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.9
fi
if [ $1 -eq 83 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.9 -s 3 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.9
fi
if [ $1 -eq 84 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.9 -s 4 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.9
fi
if [ $1 -eq 85 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.9 -s 5 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.9
fi
if [ $1 -eq 86 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.9 -s 6 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.9
fi
if [ $1 -eq 87 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.9 -s 7 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.9
fi
if [ $1 -eq 88 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.9 -s 8 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.9
fi
if [ $1 -eq 89 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.9 -s 9 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.9
fi
if [ $1 -eq 90 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.9 -s 10 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.9
fi
if [ $1 -eq 91 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.9 -s 11 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.9
fi
if [ $1 -eq 92 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.9 -s 12 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.9
fi
if [ $1 -eq 93 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.9 -s 13 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.9
fi
if [ $1 -eq 94 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.9 -s 14 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.9
fi
if [ $1 -eq 95 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.9 -s 15 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.9
fi
if [ $1 -eq 96 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.9 -s 16 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.9
fi
if [ $1 -eq 97 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.9 -s 17 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.9
fi
if [ $1 -eq 98 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.9 -s 18 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.9
fi
if [ $1 -eq 99 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.9 -s 19 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.9
fi
if [ $1 -eq 100 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.9 -s 20 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.0.9
fi
if [ $1 -eq 101 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.1 -s 1 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.1
fi
if [ $1 -eq 102 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.1 -s 2 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.1
fi
if [ $1 -eq 103 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.1 -s 3 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.1
fi
if [ $1 -eq 104 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.1 -s 4 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.1
fi
if [ $1 -eq 105 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.1 -s 5 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.1
fi
if [ $1 -eq 106 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.1 -s 6 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.1
fi
if [ $1 -eq 107 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.1 -s 7 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.1
fi
if [ $1 -eq 108 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.1 -s 8 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.1
fi
if [ $1 -eq 109 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.1 -s 9 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.1
fi
if [ $1 -eq 110 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.1 -s 10 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.1
fi
if [ $1 -eq 111 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.1 -s 11 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.1
fi
if [ $1 -eq 112 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.1 -s 12 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.1
fi
if [ $1 -eq 113 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.1 -s 13 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.1
fi
if [ $1 -eq 114 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.1 -s 14 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.1
fi
if [ $1 -eq 115 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.1 -s 15 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.1
fi
if [ $1 -eq 116 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.1 -s 16 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.1
fi
if [ $1 -eq 117 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.1 -s 17 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.1
fi
if [ $1 -eq 118 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.1 -s 18 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.1
fi
if [ $1 -eq 119 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.1 -s 19 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.1
fi
if [ $1 -eq 120 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.1 -s 20 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.1
fi
if [ $1 -eq 121 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.3 -s 1 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.3
fi
if [ $1 -eq 122 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.3 -s 2 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.3
fi
if [ $1 -eq 123 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.3 -s 3 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.3
fi
if [ $1 -eq 124 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.3 -s 4 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.3
fi
if [ $1 -eq 125 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.3 -s 5 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.3
fi
if [ $1 -eq 126 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.3 -s 6 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.3
fi
if [ $1 -eq 127 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.3 -s 7 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.3
fi
if [ $1 -eq 128 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.3 -s 8 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.3
fi
if [ $1 -eq 129 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.3 -s 9 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.3
fi
if [ $1 -eq 130 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.3 -s 10 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.3
fi
if [ $1 -eq 131 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.3 -s 11 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.3
fi
if [ $1 -eq 132 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.3 -s 12 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.3
fi
if [ $1 -eq 133 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.3 -s 13 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.3
fi
if [ $1 -eq 134 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.3 -s 14 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.3
fi
if [ $1 -eq 135 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.3 -s 15 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.3
fi
if [ $1 -eq 136 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.3 -s 16 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.3
fi
if [ $1 -eq 137 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.3 -s 17 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.3
fi
if [ $1 -eq 138 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.3 -s 18 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.3
fi
if [ $1 -eq 139 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.3 -s 19 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.3
fi
if [ $1 -eq 140 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.3 -s 20 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.3
fi
if [ $1 -eq 141 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.5 -s 1 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.5
fi
if [ $1 -eq 142 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.5 -s 2 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.5
fi
if [ $1 -eq 143 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.5 -s 3 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.5
fi
if [ $1 -eq 144 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.5 -s 4 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.5
fi
if [ $1 -eq 145 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.5 -s 5 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.5
fi
if [ $1 -eq 146 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.5 -s 6 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.5
fi
if [ $1 -eq 147 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.5 -s 7 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.5
fi
if [ $1 -eq 148 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.5 -s 8 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.5
fi
if [ $1 -eq 149 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.5 -s 9 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.5
fi
if [ $1 -eq 150 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.5 -s 10 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.5
fi
if [ $1 -eq 151 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.5 -s 11 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.5
fi
if [ $1 -eq 152 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.5 -s 12 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.5
fi
if [ $1 -eq 153 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.5 -s 13 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.5
fi
if [ $1 -eq 154 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.5 -s 14 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.5
fi
if [ $1 -eq 155 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.5 -s 15 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.5
fi
if [ $1 -eq 156 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.5 -s 16 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.5
fi
if [ $1 -eq 157 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.5 -s 17 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.5
fi
if [ $1 -eq 158 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.5 -s 18 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.5
fi
if [ $1 -eq 159 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.5 -s 19 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.5
fi
if [ $1 -eq 160 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.5 -s 20 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.5
fi
if [ $1 -eq 161 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.7 -s 1 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.7
fi
if [ $1 -eq 162 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.7 -s 2 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.7
fi
if [ $1 -eq 163 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.7 -s 3 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.7
fi
if [ $1 -eq 164 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.7 -s 4 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.7
fi
if [ $1 -eq 165 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.7 -s 5 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.7
fi
if [ $1 -eq 166 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.7 -s 6 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.7
fi
if [ $1 -eq 167 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.7 -s 7 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.7
fi
if [ $1 -eq 168 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.7 -s 8 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.7
fi
if [ $1 -eq 169 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.7 -s 9 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.7
fi
if [ $1 -eq 170 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.7 -s 10 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.7
fi
if [ $1 -eq 171 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.7 -s 11 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.7
fi
if [ $1 -eq 172 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.7 -s 12 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.7
fi
if [ $1 -eq 173 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.7 -s 13 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.7
fi
if [ $1 -eq 174 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.7 -s 14 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.7
fi
if [ $1 -eq 175 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.7 -s 15 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.7
fi
if [ $1 -eq 176 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.7 -s 16 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.7
fi
if [ $1 -eq 177 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.7 -s 17 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.7
fi
if [ $1 -eq 178 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.7 -s 18 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.7
fi
if [ $1 -eq 179 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.7 -s 19 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.7
fi
if [ $1 -eq 180 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.7 -s 20 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.7
fi
if [ $1 -eq 181 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.9 -s 1 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.9
fi
if [ $1 -eq 182 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.9 -s 2 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.9
fi
if [ $1 -eq 183 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.9 -s 3 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.9
fi
if [ $1 -eq 184 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.9 -s 4 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.9
fi
if [ $1 -eq 185 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.9 -s 5 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.9
fi
if [ $1 -eq 186 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.9 -s 6 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.9
fi
if [ $1 -eq 187 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.9 -s 7 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.9
fi
if [ $1 -eq 188 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.9 -s 8 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.9
fi
if [ $1 -eq 189 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.9 -s 9 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.9
fi
if [ $1 -eq 190 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.9 -s 10 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.9
fi
if [ $1 -eq 191 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.9 -s 11 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.9
fi
if [ $1 -eq 192 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.9 -s 12 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.9
fi
if [ $1 -eq 193 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.9 -s 13 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.9
fi
if [ $1 -eq 194 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.9 -s 14 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.9
fi
if [ $1 -eq 195 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.9 -s 15 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.9
fi
if [ $1 -eq 196 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.9 -s 16 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.9
fi
if [ $1 -eq 197 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.9 -s 17 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.9
fi
if [ $1 -eq 198 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.9 -s 18 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.9
fi
if [ $1 -eq 199 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.9 -s 19 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.9
fi
if [ $1 -eq 200 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.9 -s 20 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.1.9
fi
if [ $1 -eq 201 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 2.1 -s 1 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.2.1
fi
if [ $1 -eq 202 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 2.1 -s 2 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.2.1
fi
if [ $1 -eq 203 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 2.1 -s 3 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.2.1
fi
if [ $1 -eq 204 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 2.1 -s 4 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.2.1
fi
if [ $1 -eq 205 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 2.1 -s 5 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.2.1
fi
if [ $1 -eq 206 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 2.1 -s 6 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.2.1
fi
if [ $1 -eq 207 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 2.1 -s 7 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.2.1
fi
if [ $1 -eq 208 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 2.1 -s 8 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.2.1
fi
if [ $1 -eq 209 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 2.1 -s 9 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.2.1
fi
if [ $1 -eq 210 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 2.1 -s 10 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.2.1
fi
if [ $1 -eq 211 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 2.1 -s 11 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.2.1
fi
if [ $1 -eq 212 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 2.1 -s 12 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.2.1
fi
if [ $1 -eq 213 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 2.1 -s 13 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.2.1
fi
if [ $1 -eq 214 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 2.1 -s 14 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.2.1
fi
if [ $1 -eq 215 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 2.1 -s 15 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.2.1
fi
if [ $1 -eq 216 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 2.1 -s 16 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.2.1
fi
if [ $1 -eq 217 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 2.1 -s 17 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.2.1
fi
if [ $1 -eq 218 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 2.1 -s 18 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.2.1
fi
if [ $1 -eq 219 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 2.1 -s 19 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.2.1
fi
if [ $1 -eq 220 ]; then
  ./combine --LHCmode LHC-limits --cminDefaultMinimizerStrategy 1 --cminFallbackAlgo Minuit2,Migrad,0:0.1 --cminFallbackAlgo Minuit2,Migrad,1:1.0 --cminFallbackAlgo Minuit2,Migrad,0:1.0 --X-rtd MINIMIZER_MaxCalls=999999999 --X-rtd MINIMIZER_analytic --X-rtd FAST_VERTICAL_MORPH --clsAcc 0 -T 100 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 2.1 -s 20 -d comb_2017_htt_slim.root -n FullCLs_htt_slim.POINT.2.1
fi
tar -cf combine_output.tar higgsCombine*.root
rm higgsCombine*.root
