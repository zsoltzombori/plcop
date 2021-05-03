PROLOG=swi
PROLOG_PATH=/usr/bin/swipl
PROLOG_OPTIONS='-nodebug -L0 -G0 -T0 -g '
PROOF_LAYOUT=connect
PROVER_PATH=.

TIMEOUT=1200
# TIMEOUT=4200
LOGERROR=true



if [[ $# -ne 8 && $# -ne 10 ]]; then
    echo "Usage: $0 <ini file> <problem dir> <log dir> <result dir> <stage> <corenum> <input_tptp_file> <input_pl_file> [eval problem dir] [eval result dir]"
    echo $@
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
MCTS_LOG_DIR=$3
RESULT_DIR=$4
STAGE=$5
CORENUM=$6
INPUT_TPTP_FILE=$7
INPUT_PL_FILE=$8

MCTS_LOG_DIR2="$MCTS_LOG_DIR/stage$STAGE"
mkdir -p "$MCTS_LOG_DIR2/$PROBLEM_DIR"

if [[ $# -ne 8 ]]; then
 echo "EVALUATION MODE"
 EVAL_PROBLEM_DIR=$9
 EVAL_RESULT_DIR=$10
 mkdir -p "$MCTS_LOG_DIR2/$EVAL_PROBLEM_DIR"
fi

OUTFILE="${MCTS_LOG_DIR2}/{}.out"
if [ "$LOGERROR" = true ] ; then
    ERRFILE="${MCTS_LOG_DIR2}/{}.err"
else
    ERRFILE="/dev/null"
fi



export OMP_NUM_THREADS=1

START=$(date +%s.%N)
echo "Building montecarlo tree for each problem in $PROBLEM_DIR"
SCRIPT="/usr/bin/timeout --preserve-status -k 5 ${TIMEOUT} python montecarlo.py ${INI_FILE} --outdir ${RESULT_DIR} --stage ${STAGE} --extra_axioms ${INPUT_TPTP_FILE} --extra_axioms_plfile ${INPUT_PL_FILE} --problem_file {} > $OUTFILE 2> $ERRFILE"

find ${PROBLEM_DIR} -type d | parallel -j $CORENUM --no-notice mkdir -p ${MCTS_LOG_DIR2}/{}
find ${PROBLEM_DIR} -type f \( -name "*.p" -o -name "*.tptp" \) | shuf | parallel -j $CORENUM --no-notice $SCRIPT
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "MCTS time: $DIFF sec"
printf "SUCCESS: "
grep -rl "SUCCESS" $MCTS_LOG_DIR2/$PROBLEM_DIR/*.out | wc -l

if [[ $# -ne 8 ]]; then
    EVAL_START=$(date +%s.%N)
    echo "Building montecarlo tree for each problem in $EVAL_PROBLEM_DIR"
    SCRIPT="/usr/bin/timeout --preserve-status -k 5 ${TIMEOUT} python montecarlo.py ${INI_FILE} --outdir ${EVAL_RESULT_DIR} --stage ${STAGE} --modeldir ${RESULT_DIR} --problem_file {} > $OUTFILE 2> $ERRFILE"
    find ${EVAL_PROBLEM_DIR} -type d | parallel -j $CORENUM --no-notice mkdir -p ${MCTS_LOG_DIR2}/{}
    find ${EVAL_PROBLEM_DIR} -type f \( -name "*.p" -o -name "*.tptp" \) | shuf | parallel -j $CORENUM --no-notice $SCRIPT
    EVAL_END=$(date +%s.%N)
    EVAL_DIFF=$(echo "$EVAL_END - $EVAL_START" | bc)
    echo "EVAL MCTS time: $EVAL_DIFF sec"
    echo "SUCCESS COUNT:"
    grep -rl "SUCCESS" $MCTS_LOG_DIR2/$EVAL_PROBLEM_DIR/*.out | wc -l
fi
