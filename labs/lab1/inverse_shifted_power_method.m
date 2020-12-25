clear
n=input('podaj n=');
a(1:n,1:n)=0
x(1:n,1:1)=1
y(1:n,1:1)=0
display('podaj macierz a wierszami')
for i=1:n
for j=1:n
a(i,j)=input(' ');
end
end
shift=input('pdaj shift=');
a=a-shift*eye(n);
a=inv(a);
lam1=0;
lam2=1;
while(abs(lam1-lam2)>0.0001)
lam1=lam2;
y=a*x;
lam2=x'*y;
lam = 1/lam2 + shift
norm2=y'*y;
norm=sqrt(norm2);
x=y/norm;
pause
end