DIR="theorems/m2np"

rm -rf out/*
rm -rf results/*

experiments=(
    # rlcop
    # rlcop_eager_reduction
    rlcop_morefeatures
    rlcop_remove_duplicates
    rlcop_lemma_features
    rlcop_return_to_root
    rlcop_save_all_policy_0_
    rlcop_save_all_policy_025_
    rlcop_save_all_policy_05_
    rlcop_save_all_policy_075_
    rlcop_save_all_value_0_
    rlcop_save_all_value_025_
    rlcop_save_all_value_05_
    rlcop_save_all_value_075_
)

for experiment in "${experiments[@]}"
do
    echo "Experiment $experiment"
    
    echo "STAGE 0"
    CUDA_VISIBLE_DEVICES=-1 bash dagger.sh ini/${experiment}0.ini $DIR out/${experiment}/stage0 60

    for i in 1 2 3 4 5
    do
        echo "STAGE $i"
        CUDA_VISIBLE_DEVICES=-1 bash dagger.sh ini/${experiment}1.ini $DIR out/${experiment}/stage${i} 60
    done

done
