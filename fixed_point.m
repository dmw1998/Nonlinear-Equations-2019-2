g = @(x) [x(2)^(1/3); (1+x(1))^(1/2)];

x1 = [1.5; 0.5];
x0 = [0; 0];
k = 0;
data = [];
while norm(x1-x0,inf)>=10^(-6)
    data = [data;[k x1(1) x1(2)]];
    x0 = x1;
    x1 = g(x0);
    k = k+1;
end
fprintf('After %d iterations, the approximate solution is x_1 = %6f and x_2 = %6f',[k x1(1) x1(2)])

save fixed_point.mat
