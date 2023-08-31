#!/usr/bin/env bash

echo $(python -c 'import sys; print(sys.executable); print(sys.version)')

#python train.py --eval_every 10 --vis_every 1 \
#  --train_data_dict nuScenes_train_mini_full.pkl \
#  --eval_data_dict nuScenes_test_mini_full.pkl \
#  --offline_scene_graph yes --preprocess_workers 5 \
#  --log_dir ../experiments/nuScenes/models --log_tag _nuscenes_int_ee \
#  --train_epochs 100 --augment \
#  --conf ../experiments/nuScenes/models/int_ee/config.json \
#  --device "cuda"

python train.py --eval_every 10 --vis_every 1 \
  --data_dir /mnt/Storage/datasets/trajectron \
  --train_data_dict nuScenes_train_full.pkl \
  --eval_data_dict nuScenes_test_full.pkl \
  --offline_scene_graph yes --preprocess_workers 5 \
 --log_dir ../experiments/nuScenes/models --log_tag _nuscenes_int_ee \
  --train_epochs 100 --augment \
  --conf ../experiments/nuScenes/models/int_ee/config.json \
  --device "cuda" \
  --eval_device "cuda"
