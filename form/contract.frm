dim 3;
sym n;
*Ntensors
Nfunction c,cc,t,d,aux;
Cfunctions C;
Index i1,...,i100,j1,...,j200,k1,...,k100,l1,...,l100;
sym a,a1,...,a23,b1,...,b20,e,p,smth,smth1,smth2,smth3,i,j,k,l;

*Local F7  = d(1,2)^2;
*Local F8  = d(1,2)*d(2,3);
*Local F11a= d(1,2)*t(1,2,3);
Local F11b= t(1,2,3)*d(1,2);
*Local F10a= d(1,2)*t(2,3,4);
*Local F10b= t(2,3,4)*d(1,2);
*Local F9  = t(1,2,3)^2;
*Local F12 = t(1,2,3)*t(1,2,4);
*Local F13 = t(1,2,3)*t(1,4,5);
*
*Local F14 = d(1,2)*d(2,3)*d(3,4);
*Local F15 = d(1,2)*d(3,4)*d(1,3)*d(2,4);
*
*Local eq2 = (d(1,2)-e)*(1+a*d(1,2));
*
*Local eq3sym = (d(1,2)+d(2,3)-e)*(1+a12*(d(1,2)+d(2,3))+a13*d(1,3));
*Local eq3 = (d(1,2)+d(2,3)-e)*(1+a12*d(1,2)+a23*d(2,3)+a13*d(1,3));
*Local eq3asym = (d(1,2)+p*d(2,3)-e)*(1+a12*d(1,2)+a23*d(2,3)+a13*d(1,3));
*Local comm3asym = (d(1,2)+p*d(2,3))*(1+a12*d(1,2)+a23*d(2,3)+a13*d(1,3)) - 
*(1+a12*d(1,2)+a23*d(2,3)+a13*d(1,3))*(d(1,2)+d(2,3));
*Local cse3step1 = 
**(1+a12*(d(1,2)+d(2,3))+a13*d(1,3))
*((d(1,2)+p*d(2,3))*t(1,2,3)-t(1,2,3)*(d(1,2)+p*d(2,3)));
*Local cse3step2 = (1+a12*d(1,2)+a23*d(2,3)+a13*d(1,3))*
*       (+ d(1,2) * (  - 4*i_*p )
*       + d(1,3) * (  - 4*i_ + 4*i_*p )
*       + d(2,3) * ( 4*i_ ));
*
*
*Local eq5rsym = (d(1,5)+d(2,5)+d(3,5)+d(4,5)-e)*
*(1+a1*(d(1,5)+d(2,5)+d(3,5)+d(4,5))+a2*(d(1,3)+d(2,4))+
*a3*(d(1,2)+d(2,3)+d(3,4)+d(4,1))+
*b1*(d(1,3)*d(2,4))+b2*(d(1,2)*d(3,4)+d(2,3)*d(1,4))+
*b3*(d(1,5)*d(2,4)+d(2,5)*d(1,3)+d(3,5)*d(2,4)+d(4,5)*d(1,3))+
*b4*(d(1,5)*d(3,4)+d(2,5)*d(4,1)+d(3,5)*d(1,2)+d(4,5)*d(3,2))+
*b5*(d(1,5)*d(2,3)+d(2,5)*d(3,4)+d(3,5)*d(4,1)+d(4,5)*d(1,2)));
*Local eq5fullsym = (d(1,5)+d(2,5)+d(3,5)+d(4,5)-e)*
*(1+a1*(d(1,5)+d(2,5)+d(3,5)+d(4,5))+a2*(d(1,3)+d(2,4))+
*a2*(d(1,2)+d(2,3)+d(3,4)+d(4,1))+
*b1*(d(1,3)*d(2,4))+b1*(d(1,2)*d(3,4)+d(2,3)*d(1,4))+
*b3*(d(1,5)*d(2,4)+d(2,5)*d(1,3)+d(3,5)*d(2,4)+d(4,5)*d(1,3))+
*b3*(d(1,5)*d(3,4)+d(2,5)*d(4,1)+d(3,5)*d(1,2)+d(4,5)*d(3,2))+
*b3*(d(1,5)*d(2,3)+d(2,5)*d(3,4)+d(3,5)*d(4,1)+d(4,5)*d(1,2)));
*Local comm5d12 = (d(1,5)+d(2,5)+d(3,5)+d(4,5))*d(1,2)-
*d(1,2)*(d(1,5)+d(2,5)+d(3,5)+d(4,5));
*Local comm5d15 = (d(1,5)+d(2,5)+d(3,5)+d(4,5))*d(1,5)-
*d(1,5)*(d(1,5)+d(2,5)+d(3,5)+d(4,5));
*Local comm5t123 = (d(1,5)+d(2,5)+d(3,5)+d(4,5))*t(1,2,3)-
*t(1,2,3)*(d(1,5)+d(2,5)+d(3,5)+d(4,5));
*Local comm5t125 = (d(1,5)+d(2,5)+d(3,5)+d(4,5))*t(1,2,5)-
*t(1,2,5)*(d(1,5)+d(2,5)+d(3,5)+d(4,5));
*
*.sort;
*sym a258p,a258m,a285p,a285m,a528p,a528m,a582p,a582m,a825p,a825m,a852p,a852m;
*Local cycle258 = 
*d(5,6)*a258p*d(2,5)*d(6,8)+
*d(5,4)*a258m*d(2,5)*d(4,8)+
*d(8,9)*a285p*d(2,8)*d(9,5)+
*d(8,7)*a285m*d(2,8)*d(7,5)+
*d(2,3)*a528p*d(5,2)*d(3,8)+
*d(2,1)*a528m*d(5,2)*d(1,8)+
*d(8,9)*a582p*d(5,8)*d(9,2)+
*d(8,7)*a582m*d(5,8)*d(7,2)+
*d(2,3)*a825p*d(8,2)*d(3,5)+
*d(2,1)*a825m*d(8,2)*d(1,5)+
*d(5,6)*a852p*d(8,5)*d(6,2)+
*d(5,4)*a852m*d(8,5)*d(4,2);
*
*.sort:task;
*sym c1258, c1528, c1825;
*Local A1258 = (c1258*d(1,2)*d(5,8)+c1528*d(1,5)*d(2,8)+c1825*d(1,8)*d(2,5))*d(1,2)*d(5,8);
*Local A1528 = (c1258*d(1,2)*d(5,8)+c1528*d(1,5)*d(2,8)+c1825*d(1,8)*d(2,5))*d(1,5)*d(2,8);
*Local A1825 = (c1258*d(1,2)*d(5,8)+c1528*d(1,5)*d(2,8)+c1825*d(1,8)*d(2,5))*d(1,8)*d(5,2);
*
Local test = t(i,j-1,k)*d(k,l);

* === расписываем наши функции в сигма-матрицы ===
#do ipr = 1,50
  id once d(i?,j?) = c(i,j`ipr')*c(j,j`ipr');
#enddo
#do ipr = 50,199,3
  id once t(i?,j?,k?) = c(i,j`ipr')*c(j,j{`ipr'+1})*c(k,j{`ipr'+2})*e_(j`ipr',j{`ipr'+1},j{`ipr'+2});
#enddo

* === сортировка ===
id once c(?smth) = cc(?smth); * подразумевается, что будет найдена именно первая c()
repeat;
	id cc(?smth1)*c(?smth2) = cc(?smth1)*aux(?smth2);
	repeat;
		id cc(i?,?smth1)*aux(i?,?smth2) = cc(i,?smth1,?smth2);
		id cc(i?,?smth1)*aux(j?,?smth2) = aux(j,?smth2)*cc(i,?smth1);
	endrepeat;
	id aux(?smth) = cc(?smth);
endrepeat;

print +s;
.sort:sort;

* === раскрытие и свертка ===
#do ipr = 1,100
	id once cc(i?,j1?,j2?) = d_(j1,j2)+i_*cc(i,k`ipr')*e_(k`ipr',j1,j2);
	contract;
#enddo

* === заменяем на коммутирующие ===
id cc(?name) = C(?name);

* === возвращаем к красивому виду ===
id C(i?,j1?)*C(j?,j1?) = d(i,j);
id C(i?,j1?)*C(j?,j2?)*C(k?,j3?)*e_(j1?,j2?,j3?) = t(i,j,k);
	
*bracket t,d;
print;

.end:end;
