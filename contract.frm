dim 3;
Nfunctions c1,c2,c3,c4,c5,c6,cp;
Index a,b,c,d,e,f,i,j,k,k1,...,k100,l,m,n;

Local F7  = c1(a)*c1(b)*c2(a)*c2(b);
Local F8  = c1(a)*c2(a)*c2(b)*c3(b);
Local F10 = c1(a)*c2(a)*c2(b)*c3(c)*c4(d)*e_(b,c,d);
Local F11 = c1(a)*c1(b)*c2(a)*c2(c)*c3(d)*e_(b,c,d);
Local F9  = c1(a)*c1(d)*c2(b)*c2(e)*c3(c)*c3(f)*e_(a,b,c)*e_(d,e,f);
Local F12 = c1(a)*c1(d)*c2(b)*c2(e)*c3(c)*c4(f)*e_(a,b,c)*e_(d,e,f);
Local F13 = c1(a)*c1(d)*c2(b)*c3(c)*c4(e)*c5(f)*e_(a,b,c)*e_(d,e,f);

#do i = 1,100
	id once cp?(i?)*cp?(j?) = d_(i,j)+i_*cp(k`i')*e_(k`i',i,j);
#enddo
contract;
contract;

print;

.sort
	
vectors b1,b2,b3,b4,b5,b6,bp;
Set cc:c1,c2,c3,c4,c5;
Set bb:b1,b2,b3,b4,b5;
*id cp?cc[n](a?) = 7; *bb[n](a);

print;
.end