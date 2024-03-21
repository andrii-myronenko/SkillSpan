#!/bin/bash

GOLD_PATH="$HOME/SkillSpan/data/conll"
# 3477689 4213916 8749520 6828303 9364029

for model in bert
do
  PRED_PATH="$HOME/SkillSpan/data/preds/$model"
  # for method in skills knowledge
  for method in knowledge
  do
      # for site in house tech
      for site in house tech
      do
          echo "Evaluating $model $site on $method"
          # python3 $HOME/SkillSpan/scripts/evaluate.py $GOLD_PATH/skillspan_"$site"_test.conll $PRED_PATH/$method.$site.test.3477689.out $PRED_PATH/$method.$site.test.4213916.out $PRED_PATH/$method.$site.test.8749520.out $PRED_PATH/$method.$site.test.6828303.out
          python3 $HOME/SkillSpan/scripts/evaluate.py $GOLD_PATH/skillspan_"$site"_test.conll $PRED_PATH/$method.$site.test.3477689.out
      done
  done
done
