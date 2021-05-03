PROLOG=swi
PROLOG_PATH=/usr/bin/swipl
#PROLOG_OPTIONS='-nodebug -L120M -G120M -T100M -g '
PROLOG_OPTIONS='-nodebug -L0 -G0 -T0 -g '
PROOF_LAYOUT=connect
PROVER_PATH=.

TIMEOUT=1200
# TIMEOUT=4200
LOGERROR=false



if [[ $# -ne 6 && $# -ne 8 ]]; then
 echo "Usage: $0 <ini file> <problem dir> <log dir> <result dir> <stage> <corenum> [eval problem dir] [eval result dir]"
 exit 2
fi

if [ ! -r "$1" ]; then
 echo "Error: File $1 not found" >&2
 exit 2
fi

if [ ! -r "$2" ]; then
 echo "Error: Directory $2 not found" >&2
 exit 2
fi

INI_FILE=$1
PROBLEM_DIR=$2
LOG_DIR=$3
RESULT_DIR=$4
STAGE=$5
CORENUM=$6

CURR_LOG_DIR="$LOG_DIR/stage$STAGE"
mkdir -p "$CURR_LOG_DIR/$PROBLEM_DIR"

if [[ $# -ne 6 ]]; then
 echo "EVALUATION MODE"
 EVAL_PROBLEM_DIR=$7
 EVAL_RESULT_DIR=$8
 mkdir -p "$CURR_LOG_DIR/$EVAL_PROBLEM_DIR"
fi

OUTFILE="${CURR_LOG_DIR}/{}.out"
if [ "$LOGERROR" = true ] ; then
    ERRFILE="${CURR_LOG_DIR}/{}.err"
    ERRFILE_VALUE="${CURR_LOG_DIR}/value_output.err"
    ERRFILE_POLICY="${CURR_LOG_DIR}/policy_output.err"
else
    ERRFILE="/dev/null"
    ERRFILE_VALUE="/dev/null"
    ERRFILE_POLICY="/dev/null"
fi

START=$(date +%s.%N)
if [[ $STAGE -ne 0 ]]; then
    echo "Training"
    export OMP_NUM_THREADS=32
    python train.py ${INI_FILE} --outdir ${RESULT_DIR} --target_model value >${CURR_LOG_DIR}/value_output.out 2>${ERRFILE_VALUE}  &
    python train.py ${INI_FILE} --outdir ${RESULT_DIR} --target_model policy >${CURR_LOG_DIR}/policy_output.out 2>${ERRFILE_POLICY} &
    wait
    export OMP_NUM_THREADS=1
    TRAIN_END=$(date +%s.%N)
    TRAIN_DIFF=$(echo "$TRAIN_END - $START" | bc)
    echo "TRAIN time: $TRAIN_DIFF sec"
fi


export OMP_NUM_THREADS=1

MCTS_START=$(date +%s.%N)
echo "Building montecarlo tree for each problem in $PROBLEM_DIR"
SCRIPT="/usr/bin/timeout --preserve-status -k 5 ${TIMEOUT} python montecarlo.py ${INI_FILE} --outdir ${RESULT_DIR} --stage ${STAGE} --problem_file {} > $OUTFILE 2> $ERRFILE"
find ${PROBLEM_DIR} -type d | parallel -j $CORENUM --no-notice mkdir -p ${CURR_LOG_DIR}/{}
find ${PROBLEM_DIR} -type f \( -name "*.p" -o -name "*.tptp" \) | shuf | parallel -j $CORENUM --no-notice $SCRIPT
MCTS_END=$(date +%s.%N)
MCTS_DIFF=$(echo "$MCTS_END - $MCTS_START" | bc)
echo "MCTS time: $MCTS_DIFF sec"
printf "SUCCESS: "
grep -rl "SUCCESS" $CURR_LOG_DIR/$PROBLEM_DIR/*.out | wc -l

if [[ $# -ne 6 ]]; then
    EVAL_START=$(date +%s.%N)
    echo "Building montecarlo tree for each problem in $EVAL_PROBLEM_DIR"
    SCRIPT="/usr/bin/timeout --preserve-status -k 5 ${TIMEOUT} python montecarlo.py ${INI_FILE} --outdir ${EVAL_RESULT_DIR} --stage ${STAGE} --modeldir ${RESULT_DIR} --problem_file {} > $OUTFILE 2> $ERRFILE"
    find ${EVAL_PROBLEM_DIR} -type d | parallel -j $CORENUM --no-notice mkdir -p ${CURR_LOG_DIR}/{}
    find ${EVAL_PROBLEM_DIR} -type f \( -name "*.p" -o -name "*.tptp" \) | shuf | parallel -j $CORENUM --no-notice $SCRIPT
    EVAL_END=$(date +%s.%N)
    EVAL_DIFF=$(echo "$EVAL_END - $EVAL_START" | bc)
    echo "EVAL MCTS time: $EVAL_DIFF sec"
    echo "SUCCESS COUNT:"
    grep -rl "SUCCESS" $CURR_LOG_DIR/$EVAL_PROBLEM_DIR/*.out | wc -l
fi

   
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "Total iteration time: $DIFF sec"
