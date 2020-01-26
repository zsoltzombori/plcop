# DIR="theorems/overfit"
# DIR="theorems/BushyProblems_small"
# DIR="theorems/BushyProblems"
# DIR="theorems/m2n140"
DIR="theorems/m2np"

rm -rf out/*
rm -rf results/*
echo "STAGE 0"
CUDA_VISIBLE_DEVICES=-1 bash dagger.sh ini/stage0.ini $DIR out/stage0 50

for i in 1 2 3 4 5 6 7 8 9
do
    echo "STAGE $i"
    CUDA_VISIBLE_DEVICES=-1 bash dagger.sh ini/stage1.ini $DIR out/stage${i} 50
done
