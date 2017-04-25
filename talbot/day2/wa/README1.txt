README for wa.tar.gz

Dearchive the data:

 $ tar -xvzf wa.tar.gz

You will find 3 directories: scripts, training and test.

Each script should print usage instructions when run.

Try using the corpus_reader to look at some word alignments, e.g.

 $ python corpus_reader.py  test/en-cs.en.dev.tokens test/en-cs.cs.dev.tokens test/en-cs.wa.dev

Try using the toy_aligner to align some data (these alignments will be really bad - look at the code to understand why), e.g.

$ python toy_aligner.py  test/en-cs.en.dev.tokens test/en-cs.cs.dev.tokens > toy.dev.wa

Try using the eval.py script to evaluate the alignment error rate, e.g.

 $ python scripts/eval.py test/en-cs.en.dev.tokens test/en-cs.cs.dev.tokens test/en-cs.wa.dev toy.dev.wa
   recall 0.057; precision 0.064; aer 0.939

Try the script you need to implement (it will fail):

 $ python word_alignment.py training/en-cs.en.all.tokens.10K training/en-cs.cs.all.tokens.10K 10 m1
 
Once word_alignment.py and models.py are correctly implemented you should see something like:

    $ python word_alignment.py training/en-cs.en.all.tokens.10K training/en-cs.cs.all.tokens.10K 10 m1
    corpus log likelihood: -1119633.093
    corpus log likelihood: -1040102.818
    corpus log likelihood: -1003314.528
    corpus log likelihood: -982945.436
    ...

This trains on the 10K sentences in training and outputs alignments for the 3 test sets with the prefix 'm1' (the last argument). You can evaluate these alignments like this:

  $ python eval.py test/en-cs.en.dev.tokens test/en-cs.cs.dev.tokens test/en-cs.wa.dev m1.dev.wa
  recall 0.485; precision 0.506; aer 0.505

Try to get the aer below 0.2 by the end of class :)
