#!/bin/bash

for MODEL in bert
do
  for TYPE in skills knowledge
  do
    for SET in test
    do
    for i in 3044792 4236855 6676809 8679308 9979325
      do
        mkdir -p data/preds/$MODEL
        python3 ~/SkillSpan/machamp/predict.py ~/SkillSpan/logs/skill.$MODEL.$TYPE.$i/*/model.pt ~/SkillSpan/data/conll/skillspan_house_$SET.conll ~/SkillSpan/data/preds/$MODEL/$TYPE.house.$SET.$i.out --dataset house
        python3 ~/SkillSpan/machamp/predict.py ~/SkillSpan/logs/skill.$MODEL.$TYPE.$i/*/model.pt ~/SkillSpan/data/conll/skillspan_tech_$SET.conll ~/SkillSpan/data/preds/$MODEL/$TYPE.tech.$SET.$i.out --dataset tech
      done
    done
  done
done
