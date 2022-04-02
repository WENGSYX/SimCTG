CUDA_VISIBLE_DEVICES=0,1 python train.py\
    --model_name gpt2\
    --train_path ../data/ROCStories/rocstories_train.txt\
    --dev_path ../data/ROCStories/rocstories_test.txt\
    --max_len 128\
    --number_of_gpu 2\
    --batch_size_per_gpu 16\
    --gradient_accumulation_steps 8\
    --effective_batch_size 256\
    --total_steps 20000\
    --print_every 100\
    --save_every 500\
    --learning_rate 2e-5\
    --margin 0.5\
    --save_path_prefix ./simctg_rocstories/