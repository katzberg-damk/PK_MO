
function [xs, ns] = my_jacobi(a)

n=4
b(1:n,1:1)=0;

display('podaj wektor b (kazda linia to inny wiersz wektora)')
for i=1:n
b(i,1)=input(' ');
end
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
step=0;
while(max(abs(x-y))>0.0000001);
ns(step+1) = step+1;
max(abs(x-y));
x=y;
y=d*(b-c*x);
step=step+1;
xs{step} = y;

end