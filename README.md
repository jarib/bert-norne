## Setup

	$ git submodule init && git submodule update
	$ ./bin/fetch-norne.sh
	$ pip install torch seqeval tensorboardX
	$ cd transformers && pip install -r requirements.txt && pip install . && cd -
	$ ./bin/train-ner.sh