Symbols x1, x2, x3, x4, x5;
Cfunctions t(antisym), d(sym);

Local F14 = d(1,2)*d(2,3)*d(3,4);
Local F15 = d(1,2)*d(3,4)*d(1,3)*d(2,4);

repeat;

if(match(d(x1?,x2?)^2));
    Print "(1 %t";
    id	d(x1?,x2?)^2
    	= 3 -2*d(x1,x2);
    Print "1) %t";
endif;
    
if(match(d(x1?,x2?)*d(x2?,x3?)));
    Print "(2 %t";
    id	d(x1?,x2?)*d(x2?,x3?)
    	= -i_*t(x1,x2,x3) +d(x1,x3);
    Print "2) %t";
endif;
    
if(match(d(x1?,x2?)*t(x1?,x2?,x3?)));
    Print "(5 %t";
    id	d(x1?,x2?)*t(x1?,x2?,x3?)
    	= -2*i_*d(x1,x3) +2*i_*d(x2,x3) -t(x1,x2,x3);
    Print "5) %t";
endif;
    
if(match(d(x1?,x2?)*t(x2?,x3?,x4?)));
    Print "(4 %t";
    id	d(x1?,x2?)*t(x2?,x3?,x4?)
    	= t(x1,x3,x4) -i_*d(x1,x3)*d(x2,x4) +i_*d(x1,x4)*d(x2,x3);
    Print "4) %t";
endif;
    
if(match(t(x1?,x2?,x3?)^2));
    Print "(3 %t";
    id	t(x1?,x2?,x3?)^2
    	= 6 -2*d(x1,x2) -2*d(x2,x3) -2*d(x1,x3);
    Print "3) %t";
endif;
    
if(match(t(x1?,x2?,x3?)*t(x1?,x2?,x4?)));
    Print "(6 %t";
    id	t(x1?,x2?,x3?)*t(x1?,x2?,x4?)
    	= 2*d(x3,x4) +i_*t(x1,x3,x4) +i_*t(x2,x3,x4) -d(x1,x3)*d(x2,x4) -d(x1,x4)*d(x2,x3);
    Print "6) %t";
endif;
    
if(match(t(x1?,x2?,x3?)*t(x1?,x4?,x5?)));
    Print "(7 %t";
    id	t(x1?,x2?,x3?)*t(x1?,x4?,x5?)
    	= d(x2,x4)*d(x3,x5) -d(x2,x5)*d(x3,x4) +i_*d(x1,x3)*t(x2,x4,x5) -i_*d(x1,x2)*t(x3,x4,x5);
    Print "7) %t";
endif;
    
endrepeat;
    
    Print +s;
    
.end

