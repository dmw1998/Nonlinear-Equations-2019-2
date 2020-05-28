g = @(x) [x(2)^(1/3); (1+x(1))^(1/2)];

x1 = [1.5; 0.5];
x0 = [0; 0];
k = 0;
pts = x1.';
while norm(x1-x0,inf)>=10^(-6)
    x0 = x1;
    x1 = g(x0);
    k = k+1;
    pts = [pts;x1.'];
end

l = [];
for k = 1:13
    d = norm((pts(k+1,:)-x1))/norm((pts(k,:)-x1));
    l = [l;d];
end
l

save convergence.mat l