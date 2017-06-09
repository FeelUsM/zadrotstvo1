#-
nfun c,cc,aux,aux1,aux2;
nfun comm;
Cfun J(sym),h,auxC,ccc,eq(sym);
dim 3;
index al,be,ga1,...,ga20,mu1,...,mu100;
set muset:mu1,...,mu100;

sym n,A,B,smth,smth1,smth2;
dim n;
index i,j,k1,...,k20;
set outindex: k1,...,k20;
Nfun antiD(sym);
Cfun mye; * опять костыли приходится клепать


#+
#define debug "1"
*=== Гамильтонианы ===
#define H "J(i,j)*d_(al,be)*c(i,al)*c(j,be)/2 + h(i,al)*c(i,al)";
#define Hh "h(i,al)*c(i,al)";
#define HJ "J(i,j)*d_(al,be)*c(i,al)*c(j,be)/2";

*local Ch = comm(`Hh',c(k1,ga1));
*local CJ = comm(`HJ',c(k1,ga1));
*local C  = comm(`H' ,c(k1,ga1));
*---
*local CCh = comm(`Hh',c(k1,ga1)*c(k2,ga2));
local CCJ = comm(`HJ',c(k1,ga1)*c(k2,ga2));
*local CC  = comm(`H' ,c(k1,ga1)*c(k2,ga2));
*---
*local C2h = comm(`Hh',c(k1,ga1)*c(k2,ga1));
*local C2J = comm(`HJ',c(k1,ga1)*c(k2,ga1));
*local C2  = comm(`H' ,c(k1,ga1)*c(k2,ga1));
*---
*local C3h = comm(`Hh',c(k1,ga1)*c(k2,ga2)*c(k3,ga3)*e_(ga1,ga2,ga3));
*local C3J = comm(`HJ',c(k1,ga1)*c(k2,ga2)*c(k3,ga3)*e_(ga1,ga2,ga3));
*local C3  = comm(`H' ,c(k1,ga1)*c(k2,ga2)*c(k3,ga3)*e_(ga1,ga2,ga3));
#-
id comm(A?,B?) = A*B-B*A;

bracket eq;
print +s;
.sort :commutator expanded;

* === затравочная функция ===
id once c(?smth) = cc(?smth);

#define cyi "0"
#do cyflag=1,1
	#define cyi "{`cyi'+1}"
	#write "=== cycle #`cyi' ==="

* 	=== процесс разделения на совпадающие и различные индексы ===
	id cc(?smth1)*c(?smth2) = cc(?smth1)*cc(?smth2) + cc(?smth1)*aux(?smth2);
	while(match(cc(i?$i,?smth1)*aux(j?$j,?smth2)));
*		* внешние индексы имеют приоритет над внутренними
*		* т.е. внутренний индекс будет заменен на внешний, а не наоборот
		if(match(cc(i?,?smth1)*aux(j?outindex,?smth2)));
			$flag = 1;
		else;
			$flag = 0;
		endif;
*		* если оба индекса внешние - домножаем на маркер eq(i,j)
		if(match(cc(i?outindex,?smth1)*aux(j?outindex,?smth2)));
			id once cc(i?outindex,?smth1)*aux(j?outindex,?smth2) = 
				cc(i,?smth1)*aux(j,?smth2)*eq(c(i),c(j)); 
*			* i,j засовываем в c() чтобы внутри argument они не изменились
		endif;
		
		id cc(i?,?smth1)*aux(j?,?smth2) = 
			cc(i,?smth1)*cc(j,?smth2)*auxC+
			aux(j,?smth2)*cc(i,?smth1); * - основная замена цикла

		if(match(auxC));
			argument;
				if($flag);
					id $i = $j;
				else;
					id $j = $i;
				endif;	
			endargument;
			id auxC = 1;
		endif;
	endwhile;
	id aux(?smth) = 0;

	#if `debug'
	bracket eq;
	print +s;
	.sort:split;
	#endif

*	=== тождество матриц Паули ===
	id once cc(i?,al?)*cc(i?,be?) = d_(al,be)+i_*e_(al,be,mu`cyi')*cc(i,mu`cyi'); 
	contract;

	#if `debug'
	bracket eq;
	print +s;
	.sort:pauli;
	#endif

*	=== упрощение индексов ===
*	* id eq(c(i?),c(j?))*J(i?,j?) = 0; * ? почему не срабатывает в CCJ cycle #3 ? 
*	#call IndexSimplify()

*	=== новая затравочная функция ===
	if(0==match(cc(?smth)))
		id once c(?smth) = cc(?smth);
		
* 	=== условие продолжения цикла ===
	if(match(c(?smth))) redefine cyflag "0";

	#if 0
*	* 1 - включена промежуточная сортировка
		#write "(промежуточная сортировка"
*	=== Оборачиваем в симметричную функцию === в этом месте aux - костыль
		id once cc(?smth) = aux(cc(?smth));
		repeat id aux(?smth1)*cc(?smth2) = aux(?smth1,cc(?smth2));
		id aux(?smth) = antiD(?smth);

		bracket eq;
		print +s;
		.sort :cycle sort;

*	=== разворачиваем симметричную функцию ===
		id antiD(cc(?smth1)) = aux(cc(?smth1));
		#define j "1"
		#do jf = 1,1
			#define j "{`j'+1}"
*			#write "=== cycle-j #`j' ==="
			id antiD(<cc(?smth1)>,...,<cc(?smth`j')>) = aux(<cc(?smth1)>,...,<cc(?smth`j')>);
			if(match(antiD(<cc(?smth1)>,...,<cc(?smth{`j'+1})>))) redefine jf "0"; * условие продолжения цикла
			.sort :kostyl;
		#enddo
		repeat id aux(cc(?smth1),?smth2) = cc(?smth1)*aux(?smth2);
		id aux = 1;
		#write "промежуточная сортировка)"
	#else
		bracket eq;
		print +s;
		.sort :cycle;
	#endif

#enddo
#write "=== end cycle ==="

* === заменяем на коммутирующие ===
id cc(?smth) = ccc(?smth);
contract;

bracket eq;
print +s;
.sort:before end;

sum i,j,al,be,mu1,...,mu10;
#call IndexSimplify()

bracket eq;
print +s;
.end:end;
