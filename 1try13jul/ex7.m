clear all
close all
clc

%%

function xd = myode(t,x)

xd = [3*x(1)-x(2);
    -4*x(1)^2-x(2)+5];

end

figure
hold on

for i=1:20
    x0 =[rand(),rand()];
    [t,x] = ode45(@myode,[0,0.4],x0);
    plot(x(:,1),x(:,2));
end