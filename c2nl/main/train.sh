CUDA_VISIBLE_DEVICES=0,1,2,3 python -W ignore main/train_nocopy.py \
--cuda 1 \
--device_index 0 \
--world_size 4 \
--only_test 0 \
--project test \
--config_path configs/config_nocopy.yml \
--data_workers 5 \
--uncase True \
--use_src_word True \
--use_src_char False \
--use_tgt_word True \
--use_tgt_char False \
--max_src_len 400 \
--max_tgt_len 30 \
--emsize 512 \
--fix_embeddings False \
--src_vocab_size 50000 \
--tgt_vocab_size 30000 \
--share_decoder_embeddings True \
--max_examples -1 \
--batch_size 32 \
--test_batch_size 64 \
--num_epochs 200 \
--model_type transformer \
--num_head 8 \
--d_k 64 \
--d_v 64 \
--d_ff 2048 \
--src_pos_emb False \
--tgt_pos_emb True \
--max_relative_pos 32 \
--use_neg_dist True \
--nlayers 6 \
--trans_drop 0.2 \
--dropout_emb 0.2 \
--dropout 0.2 \
--copy_attn True \
--early_stop 20 \
--warmup_steps 0 \
--optimizer adam \
--learning_rate 0.0001 \
--lr_decay 0.99 \
--valid_metric bleu \
--checkpoint True \
--split_decoder False