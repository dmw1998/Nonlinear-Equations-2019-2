f = @(x) x*sin(x)-1;

k = 2;
x0 = 0; x1 = 2.5;
x = x1;
h = f(x1)*(x1-x0)/(f(x1)-f(x0));
fprintf('k     x          f(x)         h \n%d  %6f    %6f    \n%d  %6f    %6f    %6f\n', [0 x0 f(x0) 1 x1 f(x1) h]);
data = [0 x0 f(x0) NaN; 1 x1 f(x1) h];
while abs(f(x)) >= 1*10^(-6)
    x = x1 - h;
    if sign(f(x)) == sign(f(x0))
        x0 = x;
    else
        x1 = x;
    end
    h = f(x1)*(x1-x0)/(f(x1)-f(x0));
    fprintf('%d  %6f    %6f    %6f\n', [k x1 f(x1) h]); 
    data = [data;[k x1 f(x1) h]];
    k = k+1;
end

save secant.mat data