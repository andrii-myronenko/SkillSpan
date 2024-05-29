#!/bin/bash

for model in bert
# for model in bert spanbert jobbert jobspanbert
do
        for exp in skills knowledge
        # for exp in knowledge
        do
                scripts/training/run.experiment.sh $model $exp
        done
done
