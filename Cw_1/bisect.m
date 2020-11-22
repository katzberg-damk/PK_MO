f=input('podaj wzor na f(x)=','s');
a=input('podaj a=');
b=input('podaj b=');
eps=input('podaj eps=');
x=a;f1=eval(f);
x=b;f2=eval(f);
del=1000000;
while del > eps
x=(b+a)/2;
f3=eval(f);
if f1?f3<0
b=x;
f2=f3;
else
a=x;
f1=f3;
end
del=b-a
end x=x