
function [Xk, k] = newton(f,df,tx)
x0 = tx(1); % нижняя граница интервала
x1 = tx(2); % верхняя граница интервала
e = 1e-5; % Погрешность
% начальные приближения
Xkm = (x0+x1)/2; 
Yo = f(x0);
k = 0; % счетчик итераций
while abs(Yo) > e 
    Xk = Xkm - f(Xkm)/df(Xkm);
    Xkm = Xk;
    Yo = f(Xk);
    k = k + 1;
end


