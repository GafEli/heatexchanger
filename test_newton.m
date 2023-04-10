function test_newton()
clear, clc

x = -3:0.001:3;
diap = [0, 3]; % диапазон x
[x0, n] = newton(@fun,@dfun,diap);
x00 = fzero(@fun, (diap(1)+diap(2))/2); % решение встроенной ф-цией
fprintf('Корень уравнения х = %f, \n', x0);
fprintf('Количество итераций равно %d. \n',n);
fprintf('Результат встроенной функции x = %f \n',x00);

plot(x, fun(x), x0, fun(x0), 'o');

end

function y = fun(x)

y = x.^3 -2.*x - 5;

end

function df = dfun(x)

eps = 1e-8;
dx = abs(x) * eps;

df = (fun(x + dx) - fun(x - dx)) /(2*dx);


end