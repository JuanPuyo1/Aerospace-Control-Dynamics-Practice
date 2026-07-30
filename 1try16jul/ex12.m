clear all
close all
clc

%%

fun = @(t,x)[x(2);
            2*(1-x(1)^2)*x(2)-x(1)];

figure
grid on
hold on
for i=1:20
    x0 = [randi([0,1]);randi([-1,1])];
    [t,x] = ode45(fun,[0,1.6],x0);
    plot(x0(1), x0(2), 'b.', 'MarkerSize', 20);
    plot(x(:,1),x(:,2));
end