clear
n=input('podaj n=');
a(1:n,1:n)=0
b(1:n,1:1)=0
display('podaj macierz a wierszami')
for i=1:n
for j=1:n
a(i,j)=input(' ');
end
end
display('podaj wektor b')
for i=1:n
b(i,1)=input(' ');
end
% pomocnicze macierze
c(1:n,1:n) = 0;
d(1:n,1:n) = 0;
for i=1:n
for j=1:n
if i==j
d(i,j)=a(i,j);
else
c(i,j)=a(i,j);
end
end
end
d=inv(d);
x(1:n,1:1)=10000000;
y(1:n,1:1)=0;
step=0;% WLASCIWE ITERACJE
while(max(abs(x-y))>0.0000001);
max(abs(x-y))
x=y;
y=d*(b-c*x);
step=step+1
y
pause
end