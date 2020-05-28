f = @(x) x*sin(x)-1;

x = [0 2.5];
k = 0;
data = [];
fprintf('k        a          f(a)          b         f(b) \n')
while x(2)-x(1) >= 1*10^(-6)
    fprintf('%d    %6f    %6f    %6f    %6f\n', [k x(1) f(x(1)) x(2) f(x(2))]);
    data = [data;k x(1) f(x(1)) x(2) f(x(2))];
    m = x(1) + 1/2 * (x(2)-x(1));
    v = f(m);
    if sign(v) == sign(f(x(1)))
        x(1) = m;
    else
        x(2) = m;
    end
    k = k+1;
end

save bisection.mat data