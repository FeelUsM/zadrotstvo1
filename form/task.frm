Cfun c(sym),A(sym),B(sym);
sym i,j,k,l;

Local t = 
-c(i,j)*c(j-1,k)
-c(i,j)*c(j+1,k)
+c(i,k)*c(k-1,j)
+c(i,k)*c(k+1,j)
-c(j,k)*c(k-1,i)
-c(j,k)*c(k+1,i)
+c(j,i)*c(i-1,k)
+c(j,i)*c(i+1,k)
-c(k,i)*c(i-1,j)
-c(k,i)*c(i+1,j)
+c(k,j)*c(j-1,i)
+c(k,j)*c(j+1,i);


id c(i?,j?)*c(k?,l?) = (4*A(i,j)*A(k,l)-A(i,k)*A(j,l)-A(i,l)*A(j,k));
id A(i?,j?)*A(k?,l?) = B(i,j)*B(k,l) +1/3*B(i,k)*B(j,l)  +1/3*B(i,l)*B(j,k) ;

print +s;
.end;

