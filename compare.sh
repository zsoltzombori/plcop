LEANCOP_PROVEN=

echo "PROVEN BY BOTH: "
comm -12 <(grep -rl Theorem ../rlcop/m2n.ucb.200k.tree1 | xargs basename -a | sort ) <(grep -rl SUCCESS out/stage0/scratch/mptp/ | xargs basename -a | sort  | rev | cut -c 7- | rev) |wc -l
# sort <(grep -rl SUCCESS out/stage0/scratch/mptp/ | xargs basename -a | rev | cut -c 7- | rev) <(grep -rl Theorem ../rlcop/m2n.ucb.200k.tree1 | xargs basename -a) | uniq -d | wc -l


echo "PROVEN BY LEANCOP ONLY: "
comm -13 <(grep -rl Theorem ../rlcop/m2n.ucb.200k.tree1 | xargs basename -a | sort ) <(grep -rl SUCCESS out/stage0/scratch/mptp/ | xargs basename -a | sort  | rev | cut -c 7- | rev) |wc -l


echo "PROVEN BY RLCOP ONLY: "
comm -23 <(grep -rl Theorem ../rlcop/m2n.ucb.200k.tree1 | xargs basename -a | sort ) <(grep -rl SUCCESS out/stage0/scratch/mptp/ | xargs basename -a | sort  | rev | cut -c 7- | rev) |wc -l
comm -23 <(grep -rl Theorem ../rlcop/m2n.ucb.200k.tree1 | xargs basename -a | sort ) <(grep -rl SUCCESS out/stage0/scratch/mptp/ | xargs basename -a | sort  | rev | cut -c 7- | rev)

# sort <(grep -rl FAILURE out/stage0/scratch/mptp/ | xargs basename -a  | rev | cut -c 7- | rev) <(grep -rl Theorem ../rlcop/m2n.ucb.200k.tree1 | xargs basename -a) | uniq -d | wc -l
