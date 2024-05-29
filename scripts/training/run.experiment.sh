#!/bin/bash

MODEL=$1 # e.g., bert
PARAMETERS=$2 # e.g., skill knowledge multi

# for c in 8679308 9979325
for c in 3044792 4236855 6676809 8679308 9979325
do

    echo "Training $MODEL on $PARAMETERS using seed $c"
    python3 ~/SkillSpan/machamp/train.py \
        --dataset_configs configs/$PARAMETERS.json \
        --parameters_config configs/$MODEL.json \
        --name skill.$MODEL.$PARAMETERS.$c \
        --seed $c \

done
