function F=nlcon(x,y)
% NMPC constraint function
% x: state of the system (dimension n*1).
% y: output of the system (dimension ny*1).
% F: constraint function (dimension Nc*1, where
% Nc is the number of constraints).
% Constraints written in the standard form F(x,y)<=0.
% Only the function F must be defined here (without <=0).

% Constraint functions
F(1,:) = -1500+260-80;
% F(2,:) = ...;





