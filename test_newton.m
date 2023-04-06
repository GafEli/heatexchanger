clear, clc
 
diap = [0, 3]; % диапазон x
fun = 'x^3 -2*x - 5'; % функция
dfun = diff(sym(fun)) % производная
[x0 n] = newton(fun,dfun,diap);
x00 = fzero(fun, (diap(1)+diap(2))/2); % решение встроенной ф-цией
fprintf('Корень уравнения х = %f, \n', x0);
fprintf('Количество итераций равно %d. \n',n);
fprintf('Результат встроенной функции x = %f \n',x00);