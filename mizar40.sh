DIR="theorems/mizar40_train"
EVAL_DIR="theorems/mizar40_test"
CORES=60
GPU=1,2,3

experiments=(
    gnn_paramodulation_0.7ent
    plcop_paramodulation
)

LOG_DIR=out
RESULT_DIR=results

for experiment in "${experiments[@]}"
do
    echo "Experiment $experiment"

    for i in 0 1 2 3 #4 5 #6 7 8 9 10
    do
        if [ "$i" = "0" ]; then
            VERSION=0
        else
            VERSION=1
        fi

        echo "STAGE $i"
        CUDA_VISIBLE_DEVICES=$GPU bash dagger.sh ini/${experiment}${VERSION}.ini $DIR $LOG_DIR/$experiment $RESULT_DIR/$experiment ${i} $CORES $EVAL_DIR ${RESULT_DIR}/eval/$experiment
    done

done

