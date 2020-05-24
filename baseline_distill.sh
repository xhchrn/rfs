# ======================
# exampler commands on miniImageNet
# ======================

# supervised pre-training
python train_supervised.py --trial pretrain \
	--model_path ./checkpoints --tb_path ./tb \
	--dataset CIFAR-FS --data_root data/CIFAR-FS \
	--epochs 90 --lr_decay_epochs 45,60,75

# distillation
# python train_distillation.py -r 0.5 -a 1.0 \
# 	--path_t checkpoints/resnet12_CIFAR-FS_lr_{}-pretrain/resnet12_last.pth \
# 	--trial born1 --model_path ./checkpoints --tb_path ./tb \
# 	--dataset CIFAR-FS --data_root data/CIFAR-FS \
# 	--epochs 90 --lr_decay_epochs 45,60,75
# 
# # evaluation
# python eval_fewshot.py --model_path /path/to/student.pth --data_root /path/to/data_root
