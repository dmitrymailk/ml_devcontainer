export TASK_NAME=mrpc

python huggingface_glue.py \
  --model_name_or_path bert-base-cased \
  --task_name $TASK_NAME \
  --do_train \
  --do_eval \
  --max_seq_length 128 \
  --per_device_train_batch_size 32 \
  --learning_rate 2e-5 \
  --num_train_epochs 3 \
  --output_dir ./ignore/$TASK_NAME/ \
  --overwrite_output_dir

# Train in the docker container 
# real    2m25.427s
# user    2m4.445s
# sys     0m16.502s

# Train on the real machine
# real    2m25,923s
# user    2m6,226s
# sys     0m14,957s