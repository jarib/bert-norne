#!/bin/bash

root=$(pwd)

export OUTPUT_DIR="$root/norne-model"
export BATCH_SIZE=32
export NUM_EPOCHS=10
export SAVE_STEPS=750
export SEED=1
export BERT_MODEL=bert-base-multilingual-cased
export MAX_LENGTH=128

cd ./transformers/examples

python3 run_ner.py --data_dir "$root" \
	--model_type bert \
	--labels "$root"/labels.txt \
	--model_name_or_path $BERT_MODEL \
	--output_dir $OUTPUT_DIR \
	--max_seq_length  $MAX_LENGTH \
	--num_train_epochs $NUM_EPOCHS \
	--per_gpu_train_batch_size $BATCH_SIZE \
	--save_steps $SAVE_STEPS \
	--seed $SEED \
	--do_train \
	--do_eval \
	--do_predict
