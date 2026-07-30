function [f,h]=predrover46(t,x,u)
% NMPC prediction model
% t: time (scalar, useful for time-varying systems). 
% x: state of the system (dimension n*1).
% u: input of the system (dimension nu*1).
% f,h: functions of the state and output equations: 
% xdot=f(t,x,u)
% y=h(t,x,u).

% State equation
global l
th = x(3,:);
f = [u(1)*cos(th);
      u(1)*sin(th);
      u(1)/l*tan(u(2))];

% Output equation
h = [x(1);x(2)];
    