%newton
f=input('podaj wzor f(x)=','s');
df=input('podaj wzor na df/dx=','s');
x=input('podaj x0=');
eps=input('podaj eps=');
del=1000000;
while del > eps
x1=x-eval(f)/eval(df);
del=abs(x1-x)
x=x1;
end
format long
x=x