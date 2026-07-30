clear all
close all
clc

%%

function xd = myode(t,x)

xd = zeros(3,1);
xd(1,:) = 10*(x(2)-x(1));
xd(2,:) = x(1)*(28-x(3))-x(2);
xd(3,:) = x(1)*x(2) - 2.6667*x(3);
end

figure
grid on
hold on
for i=1:20
    x0 = [randi([-5,5]),randi([-5,5]),randi([0,5])];
    [t, x] = ode45(@myode, [0 10], x0);
    plot3(x(:,1),x(:,2),x(:,3));
end