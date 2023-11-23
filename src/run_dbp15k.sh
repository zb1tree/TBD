cd src

python DBPDSPreprocess.py

version="SDEA"
gpus='2'

# zh_en
paras=""
paras="$paras --datasets_root ../data"
paras="$paras --dataset zh_en"
paras="$paras --result_root ../outputs"
paras="$paras --pretrain_bert_path ../pre_trained_models/bert-base-multilingual-uncased"
paras="$paras --log"
paras="$paras --relation"
paras="$paras --version ${version}"
echo $paras

python -u SDEAPreprocess.py $paras
paras="$paras --fold 0"
paras="$paras --gpus ${gpus}"
python -u TBDTrain.py $paras

# ja_en
paras=""
paras="$paras --datasets_root ../data"
paras="$paras --dataset ja_en"
paras="$paras --result_root ../outputs"
paras="$paras --pretrain_bert_path ../pre_trained_models/bert-base-multilingual-uncased"
paras="$paras --log"
paras="$paras --relation"
paras="$paras --version ${version}"
echo $paras

python -u SDEAPreprocess.py $paras
paras="$paras --fold 0"
paras="$paras --gpus ${gpus}"
python -u TBDTrain.py $paras

# fr_en
paras=""
paras="$paras --datasets_root ../data"
paras="$paras --dataset fr_en"
paras="$paras --result_root ../outputs"
paras="$paras --pretrain_bert_path ../pre_trained_models/bert-base-multilingual-uncased"
paras="$paras --log"
paras="$paras --relation"
paras="$paras --version ${version}"
echo $paras

python -u SDEAPreprocess.py $paras
paras="$paras --fold 0"
paras="$paras --gpus ${gpus}"
python -u TBDTrain.py $paras
