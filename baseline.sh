# DIR="theorems/robinson/left_random/final"
# DIR="theorems/LCL_equivalential_lem"
# DIR="theorems/LCL_imp_neg"
# DIR="theorems/LCL_equivalential_lem"
DIR="theorems/m2np"
# DIR="theorems/mptp2078b"
# DIR="theorems/LCL-lemmas-pos1"
# DIR="theorems/m2n140"
# DIR="theorems/gcdm2probsfof/"
# DIR="theorems/mptp/BushyProblems"
CORES=60
GPU=1,2,3

experiments=(
    plcop
    gnn
    gnn_swap
    plcop_paramodulation
    # gnn_paramodulation
)

LOG_DIR=out
RESULT_DIR=results

for experiment in "${experiments[@]}"
do
    echo ""
    echo ""
    echo "Experiment $experiment"
    
    for i in 0 1 2 3 4 5 #6 7 8 9 10 # 11 12 13 14 15 16 17 18 19 20
    do
        if [ "$i" = "0" ]; then
            VERSION=0
        else
            VERSION=1
        fi
        
        echo "STAGE $i"
        CUDA_VISIBLE_DEVICES=$GPU bash dagger.sh ini/${experiment}${VERSION}.ini $DIR $LOG_DIR/$experiment $RESULT_DIR/$experiment ${i} $CORES
    done

    # echo "EAGER EVALUATION"
    # CUDA_VISIBLE_DEVICES=$GPU bash dagger.sh ini/${experiment}2.ini $DIR $LOG_DIR/$experiment $RESULT_DIR/$experiment 100 $CORES
    

done
