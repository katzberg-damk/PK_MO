function [x, errors, ns] = my_siecz( f, x1, x2, eps)

i = 1;
errors = [];
ns = [];
x=x1;
f1=eval(f);
x=x2;
f2=eval(f);
del=1000000;
while del > eps
  x=(x1*f2-x2*f1)/(f2-f1);
  f3=eval(f);
  if f1?f3<0
    del=abs(x2-x)
    x2=x;
    f2=f3;
  else 
    del=abs(x1-x)
    x1=x;
    f1=f3;
  end
  errors(i) = del;
  ns(i) = i;
  i=i + 1;
end
x=x