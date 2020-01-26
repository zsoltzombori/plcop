prefix0="archive/out_baseline_slowdown/stage0/theorems/m2np"
prefix1="archive/out_baseline_slowdown/stage1/theorems/m2np"

grep --files-with-match "Inference limit reached" $prefix0/* > incl_files0a
grep --files-with-match "Execution time" $(cat incl_files0a) | sort > incl_files0
grep --files-with-match "SUCCESSXXX" $(cat incl_files0) | sort > excl_files0
list0=$(comm -23 incl_files0 excl_files0 | xargs basename -a | sort)

grep --files-with-match "Inference limit reached" $prefix1/* > incl_files1a
grep --files-with-match "Execution time" $(cat incl_files1a) | sort > incl_files1
grep --files-with-match "SUCCESSXXX" $(cat incl_files1) | sort > excl_files1
list1=$(comm -23 incl_files1 excl_files1 | xargs basename -a | sort)


# list0=$(grep -rls --exclude='*.err' "Inference limit reached" $prefix0 | grep -v "SUCCESS" | xargs basename -a | sort)
# list1=$(grep -rls --exclude='*.err' "Inference limit reached" -L "SUCCESS" $prefix1 | xargs basename -a | sort)

for item in ${list0[@]}; do
    if [[ $list1 =~ "$item" ]] ; then    # use $item as regexp
        intersection+=($item)
    fi
done

count=${#intersection[@]}

echo "Intersection has $count problems"

ratiosum=0
timesum0=0
timesum1=0
ips0=0
ips1=0

for file in "${intersection[@]}"
# for file in "${intersection[@]:0:10}"
do
    file0=$prefix0/$file
    file1=$prefix1/$file
    time0=$(grep -oP '(?<=Execution time: ).*(?= sec)' $file0)
    time1=$(grep -oP '(?<=Execution time: ).*(?= sec)' $file1)
    # echo $file
    # echo $time0
    # echo $time1
    ratiosum=$(python -c "print($ratiosum + $time1 / $time0)")
    timesum0=$(python -c "print($timesum0 + $time0)")
    timesum1=$(python -c "print($timesum1 + $time1)")
    ips0=$(python -c "print($ips0 + 200000 / $time0)")
    ips1=$(python -c "print($ips1 + 200000 / $time1)")
done

ratio=$(python -c "print($ratiosum / $count)")
avgtime0=$(python -c "print($timesum0 / $count)")
avgtime1=$(python -c "print($timesum1 / $count)")
ips0=$(python -c "print($ips0 / $count)")
ips1=$(python -c "print($ips1 / $count)")
echo "Ratio: $ratio"
echo "Time0: $avgtime0"
echo "Time1: $avgtime1"
echo "IPS0: $ips0"
echo "IPS1: $ips1"
