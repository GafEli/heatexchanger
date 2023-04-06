
function [Xk k] = newton(f,df,tx)
x0 = tx(1); % нижняя граница интервала
x1 = tx(2); % верхняя граница интервала
F = inline(f); % определяем функцию
DF = inline(df); % определяем производную
e = 1e-5; % Погрешность
% начальные приближения
Xkm = (x0+x1)/2; 
Yo = F(x0);
k = 0; % счетчик итераций
while abs(Yo) > e 
    Xk = Xkm - F(Xkm)/DF(Xkm);
    Xkm = Xk;
    Yo = F(Xk);
    k = k + 1;
end


