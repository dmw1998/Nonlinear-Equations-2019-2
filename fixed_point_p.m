clear all
g = @(x) [x(2)^(1/3); (1+x(1))^(1/2)];

x = linspace(0.5,1.7);
y1 = (x+1).^(1/2);
y2 = x.^3;
plot(x,y1,'g',x,y2,'m');
hold on;

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
fprintf('After %d iterations, the approximate solution is x_1 = %6f and x_2 = %6f',[k x1(1) x1(2)])
c = linspace(3500,1,14);
scatter(pts(:,1),pts(:,2),[],c,'filled');
