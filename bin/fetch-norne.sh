#!/bin/bash

curl -LO https://raw.githubusercontent.com/ltgoslo/norne/master/ud/nob/no_bokmaal-ud-dev.conllu 
curl -LO https://raw.githubusercontent.com/ltgoslo/norne/master/ud/nob/no_bokmaal-ud-train.conllu
curl -LO https://raw.githubusercontent.com/ltgoslo/norne/master/ud/nob/no_bokmaal-ud-test.conllu

python preprocess.py no_bokmaal-ud-dev.conllu > dev.txt
python preprocess.py no_bokmaal-ud-train.conllu > train.txt
python preprocess.py no_bokmaal-ud-test.conllu > test.txt

cat train.txt dev.txt test.txt | cut -d " " -f 3 | grep -v "^$"| sort | uniq > labels.txt
