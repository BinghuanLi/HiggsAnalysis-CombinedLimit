echo "combine -M GoodnessOfFit --algorithm saturated htt_tt.root"
combine -M GoodnessOfFit --algorithm saturated htt_tt.root

echo "combine -M GoodnessOfFit --algorithm saturated htt_tt.root -t 200 --toysFrequentist --expectSignal 1.31 -n .toys"
combine -M GoodnessOfFit --algorithm saturated htt_tt.root -t 200 --toysFrequentist --expectSignal 1.31 -n .toys
