
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
  ./combine --LHCmode LHC-limits --clsAcc 0 -T 2000 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.1 -s -1 -d comb_2017_htt_slim.root -n .Test.POINT.0.1
fi
if [ $1 -eq 2 ]; then
  ./combine --LHCmode LHC-limits --clsAcc 0 -T 2000 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.3 -s -1 -d comb_2017_htt_slim.root -n .Test.POINT.0.3
fi
if [ $1 -eq 3 ]; then
  ./combine --LHCmode LHC-limits --clsAcc 0 -T 2000 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.5 -s -1 -d comb_2017_htt_slim.root -n .Test.POINT.0.5
fi
if [ $1 -eq 4 ]; then
  ./combine --LHCmode LHC-limits --clsAcc 0 -T 2000 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.7 -s -1 -d comb_2017_htt_slim.root -n .Test.POINT.0.7
fi
if [ $1 -eq 5 ]; then
  ./combine --LHCmode LHC-limits --clsAcc 0 -T 2000 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 0.9 -s -1 -d comb_2017_htt_slim.root -n .Test.POINT.0.9
fi
if [ $1 -eq 6 ]; then
  ./combine --LHCmode LHC-limits --clsAcc 0 -T 2000 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.1 -s -1 -d comb_2017_htt_slim.root -n .Test.POINT.1.1
fi
if [ $1 -eq 7 ]; then
  ./combine --LHCmode LHC-limits --clsAcc 0 -T 2000 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.3 -s -1 -d comb_2017_htt_slim.root -n .Test.POINT.1.3
fi
if [ $1 -eq 8 ]; then
  ./combine --LHCmode LHC-limits --clsAcc 0 -T 2000 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.5 -s -1 -d comb_2017_htt_slim.root -n .Test.POINT.1.5
fi
if [ $1 -eq 9 ]; then
  ./combine --LHCmode LHC-limits --clsAcc 0 -T 2000 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.7 -s -1 -d comb_2017_htt_slim.root -n .Test.POINT.1.7
fi
if [ $1 -eq 10 ]; then
  ./combine --LHCmode LHC-limits --clsAcc 0 -T 2000 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 1.9 -s -1 -d comb_2017_htt_slim.root -n .Test.POINT.1.9
fi
if [ $1 -eq 11 ]; then
  ./combine --LHCmode LHC-limits --clsAcc 0 -T 2000 --saveHybridResult -M HybridNew -m 125.09 --singlePoint 2.1 -s -1 -d comb_2017_htt_slim.root -n .Test.POINT.2.1
fi
tar -cf combine_output.tar higgsCombine*.root
rm higgsCombine*.root
