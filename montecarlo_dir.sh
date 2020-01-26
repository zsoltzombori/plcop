if [ $# -lt 5 -o $# -gt 5 ]; then
 echo "Usage: $0 <problem dir> <stage> <cp> <sim_depth> <playout>"
 exit 2
fi

if [ ! -r "$1" ]; then
 echo "Error: Directory $1 not found" >&2
 exit 2
fi
DIR=$1

if [ -n "`echo "$2" | grep '[^0-9]'`" ]; then
 echo "Error: Stage $2 is not a number" >&2
 exit 2
fi
STAGE=$2
CP=$3

if [ -n "`echo "$4" | grep '[^0-9]'`" ]; then
 echo "Error: sim_depth $4 is not a number" >&2
 exit 2
fi
DEPTH=$4

if [ -n "`echo "$5" | grep '[^0-9]'`" ]; then
 echo "Error: playout $5 is not a number" >&2
 exit 2
fi
PLAYOUT=$5

VALUE_DIR="train/value${STAGE}"
POLICY_DIR="train/policy${STAGE}"
OUT_DIR="out/stage${STAGE}"

mkdir -p "$OUT_DIR/$DIR"
mkdir -p $VALUE_DIR
mkdir -p $POLICY_DIR

SCRIPT="bash montecarlo.sh {} $VALUE_DIR $POLICY_DIR $CP $DEPTH $PLAYOUT > ${OUT_DIR}/{}.out"
ls ${DIR}/*.p | parallel $SCRIPT

echo "FAILURE COUNT:"
grep -rl "FAILURE" $OUT_DIR/$DIR/*.out | wc -l
echo "SUCCESS COUNT:"
grep -rl "SUCCESS" $OUT_DIR/$DIR/*.out | wc -l
