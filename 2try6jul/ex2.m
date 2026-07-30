clear all
close all
clc

%%

function xd = myode(t,x)

xd = zeros(2,1);
xd(1,:) = x(2);
xd(2,:) = 2*(1-x(1)^2)*x(2)-x(1);

end

figure
grid on
hold on
for i=1:20
    x0 = [rand,rand];
    [t,x] = ode45(@myode,[0,200],x0);
    plot(x(:,1),x(:,2));
end