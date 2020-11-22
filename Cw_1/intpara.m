n=input('podaj n:');
a=input('podaj a:');
b=input('podaj b:');
f=input('podaj wzor f(x)=','s');
h=(b-a)/n;
s=0;
for i=1:n
  x=a+(i-1)*h;
  y=eval(f);
  x=x+0.5*h;
  t=eval(f);
  x=x+0.5*h;
  z=eval(f);
  s=s+(y/6+2/3*t+z/6)*h;
end
s=s