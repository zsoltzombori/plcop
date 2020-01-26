DIR="theorems/mizar40_train"
EVAL_DIR="theorems/mizar40_test"
CORES=70

experiments=(
    mizar40
    # rlcop_mizar40
)

for experiment in "${experiments[@]}"
do
    echo "Experiment $experiment"

    echo "STAGE 0"
    CUDA_VISIBLE_DEVICES=-1 bash dagger.sh ini/${experiment}_train0.ini $DIR out/${experiment}/stage0 $CORES ini/${experiment}_test0.ini $EVAL_DIR

    for i in 1 2 3 4 5 6 7 8 9 10
    do
        echo "STAGE $i"
        CUDA_VISIBLE_DEVICES=-1 bash dagger.sh ini/${experiment}_train1.ini $DIR out/${experiment}/stage${i} $CORES ini/${experiment}_test1.ini $EVAL_DIR
    done

done

