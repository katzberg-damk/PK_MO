function [x, errors, ns] = my_bisect( f, a, b, eps)
  
i = 1;
errors = [];
ns = [];
x=a;
f1=eval(f);
x=b;
f2=eval(f);
del=1000000;
while del > eps
x=(b+a)/2;
f3=eval(f);
if f1*f3<0
b=x;
f2=f3;
else
a=x;
f1=f3;
end
del=b-a
errors(i)=del;
ns(i)=i;
i = i+1;
end 
x=x