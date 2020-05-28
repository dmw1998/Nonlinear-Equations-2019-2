f = @(x) [x(1)+x(2)+x(3); x(1)^2+x(2)^2+x(3)^2-2; x(1)*(x(2)+x(3))+1];
j = @(x) [1 1 1; 2*x(1) 2*x(2) 2*x(3); x(2)+x(3) x(1) x(1)];

k = 0;
x0 = [0; 0; 0];
x1 = [3/4; 1/2; -1/2];
v = f(x1);
fprintf('k      x           y          z            f1(X)        f2(X)         f3(X)        X_k - X_k-1  \n')
fprintf('%d   %6f    %6f   %6f     %6f    %6f      %6f\n', [k x1(1) x1(2) x1(3) v(1) v(2) v(3)])
data = [k x1(1) x1(2) x1(3) v(1) v(2) v(3) NaN];
while norm(x1-x0,inf) >= 1*10^(-6)
    k = k+1;
    x0 = x1;
    s = inv(j(x0))*v;
    x1 = x1 - s;
    v = f(x1);
    fprintf('%d   %6f   %6f   %6f     %6f     %6f     %6f        %6f\n', [k x1(1) x1(2) x1(3) v(1) v(2) v(3) norm(x1-x0,inf)])
    data = [data;[k x1(1) x1(2) x1(3) v(1) v(2) v(3) norm(x1-x0,inf)]];
end

save Newton_for_3.mat data