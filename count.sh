target_dir="theorems/m2np"
#target_dir="theorems/m2n140"
# target_dir="theorems/robinson_binary/simple/final"
# target_dir="theorems/robinson/simple/final"
# target_dir="theorems/hfsetprobseasyfof"
# target_dir="theorems/hfsetprobseasy4fof"
# target_dir="theorems/mizar40"

# out_dir="out_m40"

if [ $# -gt 0 ]; then
    ITER=$1
    echo "Your command line contains $# arguments"
else
    echo "!!! You have to provide an iteration count argument !!!"
    exit 2
fi

if [ $# -gt 1 ]; then
    target_dir=$2
fi
experiments=(
    rlcop
    rlcop_eager_reduction
    rlcop_save_all_policy_0_
    rlcop_paramodulation
    plcop
    plcop_paramodulation
)

for experiment in "${experiments[@]}"
do
    out_dir="out/${experiment}"

    if [ -d "$out_dir" ]; then
        echo ""
        echo "Experiment $experiment"
        echo "GRAND TOTAL:"
        grep -rls SUCCESS ${out_dir}/stage*/$target_dir | xargs basename -a | sort | uniq | wc -l

        for i in `seq 0 1 $ITER`
        do
            current_dir="${out_dir}/stage$i/$target_dir"
            if [ -d "$current_dir" ]; then
                echo "ITERATION $i (sucess, timeout, para proof, proof, total):"
                grep -rls --exclude='*.err' "SUCCESS" $current_dir | xargs basename -a | sort | uniq | wc -l
                grep -rl --exclude="*.err"  "Timeout" ${out_dir}/stage$i/$target_dir | xargs basename -a | sort | uniq | wc -l
                grep -rl --exclude="*.err"  "Paramodulation:" ${out_dir}/stage$i/$target_dir | xargs basename -a | sort | uniq | wc -l
                grep -rl --exclude="*.err"  "Created leancop proof" ${out_dir}/stage$i/$target_dir | xargs basename -a | sort | uniq | wc -l
                grep -rl  "Training data collected" ${out_dir}/stage$i/$target_dir | xargs basename -a | sort | uniq | wc -l
            fi
        done
    fi
done




# echo "EVAL:"
# if [ $# -gt 1 ]; then
#     grep -rls --exclude='*.err' "SUCCESS" out/eval/$target_dir | xargs basename -a | sort | uniq
# else
#     grep -rls --exclude='*.err' "SUCCESS" out/eval/$target_dir | xargs basename -a | sort | uniq | wc -l
# fi
# grep -rl  "Training data collected" out/eval/$target_dir | xargs basename -a | sort | uniq | wc -l


# CUMULATIVES=( 0 01 012 0123 01234 012345 0123456 01234567 012345678 0123456789 )
# for i in `seq 0 1 $ITER`
# do
#     x=${CUMULATIVES[$i]}
#     echo "CUMULATIVE SUCCESS $x:"
#     grep -rls --exclude='*.err' "SUCCESS" out/stage[$x]/$target_dir | xargs basename -a | sort | uniq | wc -l
# done


# echo "FINISHED $STAGE:"
# grep -rl --exclude='*.err' "executed" out/stage$STAGE/$target_dir | xargs basename -a | sort | uniq | wc -l

# echo "NOT FINISHED $STAGE:"
# grep -rlL --exclude='*.err' "executed" out/stage$STAGE/$target_dir | xargs basename -a | sort | uniq | wc -l
# grep -rlL --exclude='*.err' "executed" out/stage$STAGE/$target_dir | xargs basename -a | sort | uniq

# echo "FAILURE or RUNNING 0:"
# grep -rlL --exclude='*.err' "SUCCESS" out/stage0/$target_dir | xargs basename -a | sort | uniq | wc -l

# echo "NEITHER 0:"
# grep -rlL "FAILURE\|SUCCESS" out/stage0/$target_dir | xargs basename -a | sort | uniq | wc -l
# grep -rlL "FAILURE\|SUCCESS" out/stage0/$target_dirt | xargs basename -a | sort | uniq
