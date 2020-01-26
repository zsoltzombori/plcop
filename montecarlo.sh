PROLOG=swi
PROLOG_PATH=/usr/bin/swipl
#PROLOG_OPTIONS='-nodebug -L120M -G120M -T100M -g '
PROLOG_OPTIONS='-nodebug -L0 -G0 -T0 -g '
PROOF_LAYOUT=readable
PROVER_PATH=.


if [ $# -lt 6 -o $# -gt 6 ]; then
 echo "Usage: $0 <problem file> <value_dir> <policy_dir>  <cp> <sim_depth> <playout>"
 exit 2
fi

if [ ! -r "$1" ]; then
 echo "Error: File $1 not found" >&2
 exit 2
fi
FILE=$1
VALUE_DIR=$2
POLICY_DIR=$3
CP=$4

if [ -n "`echo "$5" | grep '[^0-9]'`" ]; then
 echo "Error: sim_depth $5 is not a number" >&2
 exit 2
fi
DEPTH=$5

if [ -n "`echo "$6" | grep '[^0-9]'`" ]; then
 echo "Error: playout $6 is not a number" >&2
 exit 2
fi
PLAYOUT=$6

PARAMS="[cp($CP),sim_depth($DEPTH),playout_count($PLAYOUT),leancop_settings([conj,nodef])]"

$PROLOG_PATH $PROLOG_OPTIONS \
"assert(prolog('$PROLOG')),\
   ['$PROVER_PATH/montecarlo.pl'],\
   mc_run('$FILE',$PARAMS,'$VALUE_DIR','$POLICY_DIR'),\
   halt."
             
