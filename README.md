## Setup

	$ git submodule init && git submodule update
	$ ./bin/fetch-norne.sh
	$ pip install torch seqeval tensorboardX
	$ cd transformers && pip install -r requirements.txt && pip install . && cd -
	$ ./bin/train-ner.sh

## Results

	f1 = 0.8427046263345196
	loss = 0.03901922195237588
	precision = 0.8297126839523475
	recall = 0.8561099060014461

The multilingual BERT model appears to perform worse on NER than [jarib/spacy-nb](https://github.com/jarib/spacy-nb).


