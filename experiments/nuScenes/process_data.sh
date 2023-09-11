#!/usr/bin/env zsh

python3 process_data.py --data=/home/rdyro/datasets/nuscenes --version="v1.0-trainval" \
  --output_path=/home/rdyro/datasets/trajectronpp 2>&1 | tee out.txt 

#python3 process_data.py --data=/home/rdyro/datasets/nuscenes --version="v1.0-test" \
#  --output_path=/home/rdyro/datasets/trajectron 2>&1 | tee out.txt 
