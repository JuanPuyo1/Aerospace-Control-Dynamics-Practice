clear all
close all
clc

%%

syms x1 x2
f = [6*x1-4+x2;
    2.5*x1^2-1*x1+7*x2-3];

J = jacobian(f,[x1,x2]);

A = [6 1
    5*16.6-1 7];

A = double(A);

[eig,eigv] = eig(A);


%%

function xd = myode(t,x)

xd = [6*x(1)-2*2+x(2);
    2.5*x(1)^2-1*x(1)+7*x(2)-3];

end

x0 = [16;-93];
[t,x] = ode45(@myode,[0,0.5],x0);

plot(x(:,1),x(:,2));