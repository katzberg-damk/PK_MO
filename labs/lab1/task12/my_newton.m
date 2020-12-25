%newton
function [x, errors, ns] = my_newton( f, df, x, eps)
del=1000000;
i = 1;
errors = [];
ns = [];
while del > eps
x1=x-eval(f)/eval(df);
del=abs(x1-x);

errors(i) = del;
ns(i)=i;
i = i+1;

x=x1;
end
format long
x=x