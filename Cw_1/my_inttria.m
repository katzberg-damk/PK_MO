function [s] = my_inttria(n, a, b, f)
h=(b-a)/n;
s=0;
for i=1:n
x=a+(i-1)*h;
y=eval(f);
x=x+h;
z=eval(f);
s=s+(y+z)*0.5*h;
end
s=s