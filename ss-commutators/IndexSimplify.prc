#procedure IndexSimplify()

* === внешние индексы ===
id eq(c(k1?),c(k2?))       *eq(c(k2?),c(k3?)) = eq(c(k1),c(k2),c(k3));
id eq(c(k1?),c(k2?),c(k3?))*eq(c(k3?),c(k4?)) = eq(c(k1),c(k2),c(k3),c(k4));
*...
id eq(c(k1?),c(k1?),c(k2?),c(k3?)) = eq(c(k1),c(k2),c(k3));
id eq(c(k1?),c(k1?),c(k2?))        = eq(c(k1),c(k2));
id eq(c(k1?),c(k1?))               = 1;
*...
if(match(eq(c(k1),c(k2))));
	argument;
		id k2 = k1;
	endargument;
endif;
if(match(eq(c(k1),c(k3))));
	argument;
		id k3 = k1;
	endargument;
endif;
if(match(eq(c(k2),c(k3))));
	argument;
		id k3 = k2;
	endargument;
endif;
if(match(eq(c(k1),c(k2),c(k3))));
	argument;
		id k2 = k1;
		id k3 = k1;
	endargument;
endif;
*...
id J(i?,i?) = 0;

* === сдвиг индексов ===
* но обмен индексов не происходит !!!

#call IndexId(j,i)
id e_(mu1?,mu2?,mu3?) = mye(mu1,mu2,mu3);
#call IndexId(al,be)
#call IndexId(mu2,mu1)
#call IndexId(mu3,mu1)
#call IndexId(mu4,mu1)
#call IndexId(mu3,mu2)
#call IndexId(mu4,mu2)
#call IndexId(mu4,mu3)
* ...
id mye(mu1?,mu2?,mu3?) = e_(mu1,mu2,mu3);

#endprocedure
