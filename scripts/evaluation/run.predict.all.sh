#!/bin/bash

for MODEL in bert
do
  for TYPE in skills knowledge
  do
    # for SET in dev test
    for SET in test
    do
      # for i in 3477689 4213916 8749520 6828303 9364029
      for i in 3477689
      do
        mkdir -p data/preds/$MODEL
        python3 ~/SkillSpan/machamp/predict.py logs/skill.$MODEL.$TYPE.$i/*/model.pt data/conll/skillspan_house_$SET.conll data/preds/$MODEL/$TYPE.house.$SET.$i.out --dataset house
        python3 ~/SkillSpan/machamp/predict.py logs/skill.$MODEL.$TYPE.$i/*/model.pt data/conll/skillspan_tech_$SET.conll data/preds/$MODEL/$TYPE.tech.$SET.$i.out --dataset tech
      done
    done
  done
done
