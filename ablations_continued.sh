DIR="theorems/m2np"
CORES=35

experiments=(
    # rlcop
    rlcop_eager_reduction
    # rlcop_morefeatures
    # rlcop_remove_duplicates
    # rlcop_lemma_features
    # rlcop_return_to_root
    # rlcop_save_all_policy_0_
    # rlcop_save_all_policy_025_
    # rlcop_save_all_policy_05_
    # rlcop_save_all_policy_075_
    # rlcop_save_all_value_0_
    # rlcop_save_all_value_025_
    # rlcop_save_all_value_05_
    # rlcop_save_all_value_075_
    rlcop_paramodulation
)

for experiment in "${experiments[@]}"
do
    echo "Experiment $experiment"
    
    for i in 6 7 8 9 10
    do
        echo "STAGE $i"
        CUDA_VISIBLE_DEVICES=-1 bash dagger.sh ini/${experiment}1.ini $DIR out/${experiment}/stage${i} $CORES
    done

done
