f = @(x) x*sin(x)-1;
d = @(x) sin(x) + x*cos(x);

k = 0;
x = 1.5;
fprintf('k     x          f(x)         df(x)         h \n%d  %6f    %6f     %6f    %6f\n', [k x f(x) d(x) f(x)/d(x)])
data = [k x f(x) d(x) f(x)/d(x)];
while abs(f(x)) >= 1*10^(-6)
    k = k+1;
    h = f(x)/d(x);
    x = x - h;
    fprintf('%d  %6f    %6f    %6f    %6f\n', [k x f(x) d(x) h]);
    data = [data;[k x f(x) d(x) h]];
end

save Newton.mat data

