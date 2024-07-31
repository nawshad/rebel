#!/usr/bin/env bash
curr_dir=$(pwd)

#mkdir -p docred

# this download the end-to-end (joint) DocRED split
wget -r -nH --cut-dirs=100 --reject "index.html*" --no-parent http://lavis.cs.hs-rm.de/storage/jerex/public/datasets/docred_joint/ -P ${curr_dir}/docred

# this only downloads the types.json file. See 'https://github.com/thunlp/DocRED' for download instructions
# of the original DocRED dataset
wget -r -nH --cut-dirs=100 --reject "index.html*" --no-parent http://lavis.cs.hs-rm.de/storage/jerex/public/datasets/docred_type/ -P ${curr_dir}/docred