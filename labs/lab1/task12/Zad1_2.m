f = input('podaj twoja funkcje zgodna z matlabem np. acos(x) * exp(x), f(x)=', 's');
x0=input('podaj x0=');
xN=input('podaj xN=');

nList = [10, 20, 50, 90];
aimIntegral = my_inttria(1000, x0,xN, f);
disp(aimIntegral);

for i = 1 : length(nList)
  inttriaResult = my_inttria(nList(i), x0, xN, f);
  intparaResult = my_intpara(nList(i), x0, xN, f);
  inttriaResults(i) = inttriaResult;
  intparaResults(i) = intparaResult;
  inttriaErrors(i) = abs(aimIntegral-inttriaResult);
  intparaErrors(i) = abs(aimIntegral-intparaResult);
end 
h(1) = figure;
plot(log10(nList), log10(intparaErrors),log10(nList),log10(inttriaErrors));
title('badanie bledu funkcji calkujacych');
xlabel('log10(n)');
ylabel('log10(blad calkowania)');
legend('intpara','inttria');

saveas(h(1), 'zad1.png')

f1 = polyfit(log10(nList), log10(intparaErrors), 1);
f2 = polyfit(log10(nList), log10(inttriaErrors), 1);
disp('wspolczynnik zbierznosci(tanges kierunkowy) intpara to ');
disp(f1(1));
disp('wspolczynnik zbierznosci(tanges kierunkowy) inttria to ');
disp(f2(1));

disp('Zad 2');
disp('Parametry');
eps=input('podaj eps=');
x0=input('podaj x0=');
df=input('podaj wzor na df/dx=','s');
a=input('podaj a=');
b=input('podaj b=');


[newton_res, newton_errors, newton_ns] = my_newton(f, df, x0, eps);
[bisect_res, bisect_errors, bisect_ns] = my_bisect(f, a, b, eps);
[siecz_res, siecz_errors, siecz_ns] = my_siecz(f, a, b, eps);

h(2) = figure;
plot(newton_ns, log10(newton_errors), bisect_ns, log10(bisect_errors), siecz_ns, log10(siecz_errors));
title('badanie bledu funkcji calkujacych');
xlabel('n');
ylabel('log10(blad algorytmu)');
legend('newton','bisect', 'siecz')
saveas(h(2), 'zad2.png')


disp("Uzyte parametry:")
fprintf("eps = %f ", eps);
fprintf("x0 = %f ", x0);
fprintf("a = %f ", a);
fprintf("b = %f ", b);