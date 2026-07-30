function [f,h]=predsat815(t,x,u)
% NMPC prediction model
% t: time (scalar, useful for time-varying systems). 
% x: state of the system (dimension n*1).
% u: input of the system (dimension nu*1).
% f,h: functions of the state and output equations: 
% xdot=f(t,x,u)
% y=h(t,x,u).
global MU Rp ve mb
r=norm(x(1:3));
% State equation
f = zeros(7,1);
f(1:3,:)=x(4:6);
f(4:6,:)=-MU*x(1:3)./r.^3+(u)./x(7,:);
f(7,:)=0;

% Output equation
h = rv2oe(x);
    


