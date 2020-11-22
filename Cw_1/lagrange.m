
f=input('podaj wzor f(x)=','s');
c=input('podaj c=');
d=input('podaj d=');

%Lagrange polynomials of 4th order
w1='(x-.25).*(x-.50).*(x-.75).*(x-1 )/(24/256)';
w2='(x- 0).*(x-.50).*(x-.75).*(x-1 )/(-6/256)';
w3='(x- 0).*(x-.25).*(x-.75).*(x-1 )/(4/256)';
w4='(x- 0).*(x-.25).*(x-.50).*(x-1 )/(-6/256)';
w5='(x- 0).*(x-.25).*(x-.50).*(x-.75)/(24/256)';
%find values of f(x) at sampling points:
x=[0:.25:1];
x=c+(d-c)*x;
a=eval(f);
%find values of Lagrangian interpolant of f(x):
x=[0:.01:1];
y=a(1).*eval(w1)+a(2).*eval(w2)+a(3).*eval(w3)+a(4).*eval(w4)+a(5).*eval(w5);
%find values of exact function f(x):
x=c+(d-c)*x;
z=eval(f);
%draw pictures:
plot(x,y)
hold on
plot(x,z,'m')
%find maximum error
y=abs(y-z);
max(y)