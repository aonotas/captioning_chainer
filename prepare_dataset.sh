mkdir data

echo "\n\n\t# DOWNLOAD\n\n"
curl http://cs.stanford.edu/people/karpathy/deepimagesent/flickr8k.zip -o data/flickr8k.zip
curl http://cs.stanford.edu/people/karpathy/deepimagesent/flickr30k.zip -o data/flickr30k.zip
curl http://cs.stanford.edu/people/karpathy/deepimagesent/coco.zip -o data/coco.zip

echo "\n\n\t# UNZIP\n\n"
unzip data/flickr8k.zip
unzip data/flickr30k.zip
unzip data/coco.zip

echo "\n\n\t# COUNT and MAKE VOCABULARY\n\n"
python construct_vocab.py -d flickr8k -t 2 > data/flickr8k/vocab.txt
python construct_vocab.py -d flickr30k -t 5 > data/flickr30k/vocab.txt
python construct_vocab.py -d mscoco -t 5 > data/coco/vocab.txt
