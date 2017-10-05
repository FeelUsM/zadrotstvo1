http://kobriniq.ru/mathematica
https://habrahabr.ru/company/wolfram/blog/257733/
{=== ядро, интерфейс ===
блокнот
	запуск: mathematica или ярлыком
	Wolfram CDF Player
командная строка
	запуск: math или пуск-> mathematica kernel
	незаконченное выражение можно продолжить на следующей строке
	C-C, C-G, Esc - отмена или отказ ввода
	C-D, C-Z - прекращение работы ядра
	Quit[]
MathLink
}
{=== документация, помощь ===
Help -> Documentation Center
?имя_или_оператор
??имя_или_оператор - с дополнительной информацией
?aaa* - список объектов, начинающихся с aaa
}
{=== блокнот ===
S-Enter или num-Enter- ввод-вычисление
M-, - прекратить вычисление(?)
C-L - вставить последнее выражение
S-C-L - вставить результат последнего выражения

C-spc - выход из ...
С-^ или C-6 - степень
C-_ - индекс
C-/ - дробь
C-2 - корень
C-, - добавить столбец
C-enter - добавить строку

группы можно скрывать

Edit->Preferences->Appearence->Syntax Coloring
Input: известные имена - черный
Input: новые имена - синий

можно выделить вначале ячейку
M-9	Format -> Style -> Input
M-7	Format -> Style -> Text
		Window -> Show Toolbar
		Window -> Show Ruler
		C-9 - начать ввод формулы
		C-0 - закончить ввод формулы
	Format -> Stylesheet - внешний вид стиля
	Format -> Edit Stylesheet

In[n]:=
Out[n]=
}
{=== символы ===
http://reference.wolfram.com/language/tutorial/Operators.html
Palletes -> Special Characters

esc..esc\[..]
a		Alpha
b		Beta
...
A		CapitalAlpha
B		CapitalBeta
...
int		Integral
dd		DifferencialD
\TeX
\infty
->		Rule
not		Not
}
{=== операторы ===
http://reference.wolfram.com/language/tutorial/OperatorInputForms.html#6349
(**) - комментарий
() - группировка
F[x,y] - функция
f@g === f[g]
}
{=== Встроенные функции - с большй буквы ===
	{ввод-вывод
		In[]
			% === Out[] - последний результат
		Out[]
		Quiet[выражение]	вычисляет выражение без вывода каких-либо сообщений
		Off[Функция::тег]	выключение (подавление) сообщения
		On[Функция::тег]	включение сообщения

		70	x//f === Postfix[f[x]]
		Postfix[]
		Precedence[] - старшинство (для операторов?)
		
		MatrixForm[] - список в матрицу
		StandardForm[] - человеческая форма
		FullForm[] - машинная форма
		InputForm[] - форма, которую снова можно скормить математике
	}
	{переменные, функции, опции, атрибуты
		Hold[] - квотирование
		40	x=y === Set[x,y]
		Set[x,y] - вычислить y и в последсвии заменять x на этот вычисленный сейчас y
		40	x:=y === SetDelayed[x,y]
		SetDelayed[x,y] - не вычислять сейчас y и в последсвии заменять x на этот y, такой, какой он есть, а потом вычислять
		670	x=. === Unset[x] (?)
		Unset[]
		Clear[] - сбрасывает определение, "Global`*" - все текущие переменные
		ClearAll[] - сбрасывает значения и атрибуты и ...
		Remove[x] - удаляет x
		
		SetAttributes[f,attr] - устанавливает атрибут
		Attributes[f] - возвращает список атрибутов
		ClearAttributes[f] - удаляет аттрибуты
		HoldAll - не вычислять аргументы
		Listable - атрибут, т.ч. f[{a,b,c}] -> {f[a],f[b],f[c]}
		Orderless - атрибут, т.ч. f[a,b] == f[b,a]
		Flat - атрибут т.ч. f[a,f[b]] == f[a,b]
		OneIdentity - атрибут т.ч. f[x] == x
		
		Options[f] - список опций по умолчанию фуркции f
	}
	{строки
			"abc" === String["abc"] - строка ???
		String[]
		ToString[x]
		StringJoin[s1,s2,...]
	}
	{логика
		230	!x === Not[x]
		Not[]
	}
	{блоки, циклы и ветвления
		10	expr1;expr2;expr3 === CompoundExpression[expr1,expr2,expr3]
		CompoundExpression[a,b,c] === a;b;c
		                        m = i^2
		Block[listVars,body]    Block[{i = a}, i + m] --> a+a^2 // dynamic scoping
		Module[listVars,body]   Module[{i = a}, i + m] --> a+i^2// lexical scoping
		With[listVars,body]
		
		While[cond,body]
	}
	{списки
			{a,b,c} === List[a,b,c] - список
		List[a,b,c] -> {a,b,c}
		Range[n] -> {1,...,n}
		Table[f[x],{x,xl,xh}] -> {f[xl], f[xl+1], ... , f[xh]}
		Array[f,n] -> {f[1],...,f[n]}
		
			x[[n,m,...]] === Part[x,n,m,...] - n-й элемент списка
		Part[l,n,m,...]
		All - как индекс - выбрать все элементы
		305	a;;b;;c === Span[a,b,c] - диапозон
		Span[left,right,step]
		Partition[l,n] - разбивает список l на список подсписков длиной n
		Sort[v] или ассоциацию
		Union[v] - Sort Uniq
		Reverse[]
		RotateLeft[]
		RotateRight[]
		PadLeft[]
		PadRight[]
		Split[] - повторяющиеся элементы объединяет
		Flatten[] - убирает внутренние скобки
		Join[]
		
		Prepend[]
		Append[]
		Insert[]
		Delete[]
		ReplacePart[]
		Riffle[] - расставить между элементами другой элемент

		OrderedQ[f[a,b,c]] - Упорядочены ли аргументы
		Permutations[]
		Signature[]
		
		Total[] - сумма (и с ассоц.)
	}
	{map, hash
			<|a->1,b->2|> === Association[{a->1,b->2}]
		Association[rules] (:> позволяет сохранять код и вызывать его)
		Normal[] - Association -> List[rules]
			ass[key] -> val // lvalue
			ass[[Key[smth]]]
			ass[["string"]]
		Key[]?
			
		Select[ассоц,предикат]
		Position[assoc,n] -> Key[...]
		Append[assoc,rule]
		Keys[assoc] -> {keys}
	}
	{функ.прог.
		90	body& === Function[body]
		Function[body] - лямбда-функция
			#n === Slot[n]
		Slot[n] - n-й аргумент лямбда-функции
		620	f/@list === Map[f,list]
		Map[f,{a,...,c}] -> {f[a],...,f[c]} или со значениями ассоциации
		620	f@@g[] === Apply[f,g[]]
			f@@@g[] === Apply[f,g[],{1}] --- на первом уровне
		Apply[f,g[x,...,z]] -> f[x,...,z]
		Nest[f,x,3] -> f[f[f[x]]]
		NestList[]
	}
	{шаблоны и замены
			x_ === Pattern[x,Balnk[]]
		Pattern[] ???
			_
		Blank[]???
			x__ === Pattern[x,BalnkSequence[]]
		BlankSequence[]???
		120	x->y === Rule[x,y]
		Rule[]
		120	x:>y === RuleDelayed[x,y]
		RuleDelayed[] - правая часть квотирована
		130	a/;cond
		Condition[]
		MatchQ[expr,rule(s)]
		Replace[]
		110	expr/.rules === ReplaceAll[expr,rules]
		ReplaceAll[]
		110	expr//.rules === ReplaceRepeated[expr,rules]
		ReplaceRepeated[]
	}
	{арифметика
		310	a+b+c === Plus[a,b,c]
			a-b === a+(-b)
			-b === b*(-1)
		Plus[...]
			a/b === a*b^-1
		400	a*b*c === Times[a,b,c] ; пробел===*
		Times[...]
		590	a^b === Power[a,b]
			a.^b === a*10^b
		Power[a,b]
		Sqrt[a]
		Exp[a]
		Log[]
		Sin[x]
		Cos[]
		Tan[]
		ArcSin[]
		ArcCos[]
		ArcTan[]
		Re[]
		Im[]

		N[x] - перевести в число с плавающей точкой или посчитать численно
		Abs[]
		Round[]
		RandomReal[]
		RndomInteger[]
		Max[a,b,c...]
		Min[a,b,c...]
		Mod[a,b]
		
		610	x! === Factorial[x]
		Factorial[x]
			x!! === Factorial2[x]
		Factorial2[x]

		Pi
		E
		Degree - Pi/180
		I
		Infinity
	}
	{теория чисел
		FactorInteger[x] - разложить x на простые множители
		PrimeQ[x] - простое ли число
		Prime[n] - n-е простое число
	}
	{многочлены
		Factor[expr] - разложить многочлен на множители
		Expand[expr] - раскрыть скобки
	}
	{алгебраические ур-я
		Solve[lhs==rhs,x] - решить алгебраическое ур-е
		NSolve[lhs==rhs,x] - численно решить алгебраическое ур-е
		FindRoot[lhs==rhs,{x,x0}] - численно найти корень алгебраического ур-я около x0
	}
	{Лин-Ал
		490	x.y.z === Dot[x,y,z]
		Dot[] - умножение матриц
		Eigenvalues[] - СЗ
		Inverse[]
	}
	{матан
		Limit[f,x->x0] - найти предел
		D[expr[x],x] - продифференцировать по x
		Integrate[expr[x],x] - проинтегрировать по x
		NIntegrate[expr[x],x] - численно проинтегрировать по x
		Series[f,{x,x0,order}] - разложить в степенной ряд в точке x0 
		Minimize[f,x] - минимизация
		NMinimize[f,x] - численная минимизация
		FindMinimum[f,{x,x0}] - численный минимум около x0
		Sum[f,{i,imin,imax}] - просуммировать или посчитать ряд
		NSum[f,{i,imin,imax}] - просуммировать или численно посчитать ряд
		Mean[] - среднее арифметическое
	}
	{графика и интерфейс
		Print[smth]
		Grid[]

		Plot[expr[x],{x,minx,maxx}]
		ParametricPlot[{fx[t],fy[t]},{t,mint,maxt}]
		Plot3D[expr[x,y],{x,minx,maxx},{y,miny,maxy}]
		ListLinePlot[] - график по точкам

		Manipulate[] - выводит динамическое содержимое (?)
		Import[]
		Export[]

		Button[название,MessageDialog[строка]] - ...
		MessageDialog[строка] - ...
	}
}
Основной язык
	краткий курс
		+работа с переменными и функциями
		+работа со списками
		работа с правилами
		применение синтаксиса mathemetica
	основные принципы построения вычислений
	списки
	работа со списками
	выражения
	шаблоны
	правила преобразования и определения
	функции и программы
	функциональные операции
	модульность и использование имен элементов
	текстовые фрагменты и исмволы
	вычисление выражений
	форматы данных WilgramAlpha
	приложения: структура языка
математика и алгоритмы
визуализация и графика
работа с данными
динамическая интерактивностть
блокноты и документы
система и развертывание
