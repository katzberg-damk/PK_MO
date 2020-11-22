f=input('podaj wzor f(x)=','s');
x1=input('podaj x1=');
x2=input('podaj x2=');
eps=input('podaj eps=');
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
  else del=abs(x1-x)
    x1=x;
    f1=f3;
  end
end
x=x