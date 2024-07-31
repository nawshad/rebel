### How to run:

- Fix the paths in conf files located at /conf, use the path as we have in our current dir.

- Download the data as directed here:

### Download Datasets

- TACRED is not freely avialable but instructions on how to create Re-TACRED from it can be found [here](https://github.com/gstoica27/Re-TACRED). [Done]
- For CONLL04 and ADE one can use the script from the [SpERT github](https://github.com/lavis-nlp/spert/blob/master/scripts/fetch_datasets.sh). [Done]
- For NYT the dataset can be downloaded from [JointER github](https://github.com/yubowen-ph/JointER/tree/master/dataset/NYT-multi/data). [Done]
- Finally the DocRED for RE can be downloaded at the [JEREX github](https://github.com/lavis-nlp/jerex/blob/main/scripts/fetch_datasets.sh). [Done]

- [RED<sup>FM</sup>](https://huggingface.co/datasets/Babelscape/SREDFM) is a human-filtered Relation Extraction dataset for Arabic, Chinese, French, English, German, Italian and Spanish covering 32 relation types. You can find it [here](https://huggingface.co/datasets/Babelscape/REDFM).
- [SRED<sup>FM</sup>](https://huggingface.co/datasets/Babelscape/SREDFM) is a machine-filtered Relation Extraction dataset for 17 different languages and covers up to 400 relation types. You can find it [here](https://huggingface.co/datasets/Babelscape/SREDFM). SREDFM was filtered using a Triplet Critic, which you can find [here](https://huggingface.co/Babelscape/mdeberta-v3-base-triplet-critic-xnli)

### Download Models
- https://osf.io/4x3r9/?view_only=87e7af84c0564bd1b3eadff23e4b7e54 [Done]
- [mREBEL<sub>400</sub>](https://huggingface.co/Babelscape/mrebel-large). This version of mREBEL is trained on 400 relation types, 17 languages using all SRED<sup>FM</sup>, including entity types. Use it as a standalone model or to bootstrap finetuning on your multilingual Relation Extraction datasets.
- [mREBEL<sub>32</sub>](https://huggingface.co/Babelscape/mrebel-large-32). This version is trained on a subset of SRED<sup>FM</sup> covering only the 32 relation types of RED<sup>FM</sup>.
- [mREBEL<sub>B400</sub>](https://huggingface.co/Babelscape/mrebel-large). Same as mREBEL<sub>400</sub> but trained on top of M2M100 instead of mBART in order to provide a base version with a smaller footprint.


### Running the Train and Test:
- Start running from the following scripts:
  - python train.py model=rebel_model data=conll04_data train=conll04_train
  - python test.py model=rebel_model data=conll04_data train=conll04_train do_predict=True checkpoint_path="path_to_checkpoint"
