clear all
close all
clc

%%

fun = @(t,x)[10*(x(2)-x(1));
            x(1)*(28-x(3))-x(2);
            x(1)*x(2)-2.6667*x(3)];

figure
hold on
for i=1:20
    x0=[randi([-5,5]),randi([-5,5]),randi([0,5])];
    [t,x] = ode45(fun,[0,10],x0);
    plot3(x(:,1),x(:,2),x(:,3));
end