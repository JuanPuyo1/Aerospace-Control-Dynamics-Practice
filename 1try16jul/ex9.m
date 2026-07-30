clear all
close all
clc

%%

fun = @(t,x)[-3*x(1)-x(2); 4*x(1)^2 - x(2) - 5];

figure
grid on
hold on
for i=1:20
    x0 = [randi([0,1]);randi([-1,1])];
    [t,x] = ode45(fun,[0,0.9],x0);
    plot(x(:,1),x(:,2))
end