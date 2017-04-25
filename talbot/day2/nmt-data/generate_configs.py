
def generate_config(bpe, corpus):
    template = open('config.ini').read()
    config = template.replace('__BPE__', str(bpe)).replace('__CORPUS__', str(corpus))
    open('config.'+str(bpe)+'.'+str(corpus), 'w').write(config)

for bpe in [1000, 2000, 4000, 8000, 16000]:
    for corpus in ['10K', '100K']:
        generate_config(bpe, corpus)
        
