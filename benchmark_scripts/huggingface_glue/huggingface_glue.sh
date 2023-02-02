export TASK_NAME=cola

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

#### mrpc ####
# Train in the docker container 
# real    2m25.427s
# user    2m4.445s
# sys     0m16.502s

# Train on the real machine
# real    2m25,923s
# user    2m6,226s
# sys     0m14,957s

#### cola ####
# Train in the docker container
# real    5m25.859s
# user    4m41.824s
# sys     0m37.221s
# Train on the real machine
# real    5m24,505s
# user    4m44,832s
# sys     0m33,028s