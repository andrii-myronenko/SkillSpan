#!/bin/bash

GOLD_PATH="data/conll/"
# 3044792 4236855 6676809 8679308 9979325

for model in bert
do
  PRED_PATH="data/$model"
  for method in skills knowledge
  do
      for site in house tech
      do
          echo "Evaluating $model $site on $method"
          python3 ~/SkillSpan/scripts/evaluation/evaluate.py $GOLD_PATH/skillspan_"$site"_test.conll $PRED_PATH/$method.$site.test.3044792.out $PRED_PATH/$method.$site.test.4236855.out $PRED_PATH/$method.$site.test.6676809.out $PRED_PATH/$method.$site.test.8679308.out $PRED_PATH/$method.$site.test.9979325.out
      done
  done
done
