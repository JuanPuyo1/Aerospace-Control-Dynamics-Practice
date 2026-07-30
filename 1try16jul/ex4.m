clear all
close all
clc

%% Plant parameters

global l
l = 1.5;

%% NMPC design

% Prediction model and constraint function
par.model=@predsat16jul;
par.nlcon=@nlcon16jul;

% Prediction model order
par.n=3;
% par.nx=... alternative

% Sampling time and prediction horizon
par.Ts=1;
par.Tp=20;

% Weigth matrices
par.P=diag([5,5]);
par.Q=diag([1,1]);
par.R=diag([5,5]);

% Command input lower and upper bounds
par.lb=[0;-1.3963];
par.ub=[13.8889;1.3963];
par.Tstart=0;  % Time at which the NMPC 
% controller is switched on (default=0).

K=nmpc_design_st2(par);

% K: structure used by the NMPC block in Simulink.
    
%% Simulation

ref = [0;0];


open("ex4improver16.slx");
out = sim("ex4improver16");


t_conv = 0; % Default to 0

x_pos = out.x_pos.Data;
y_pos = out.y_pos.Data;

t_conv = 0; % Default to 0

% Loop through all simulation points
for i = 1:length(out.tout)
    % If the rover is outside the +/- 5m box in X or Y...
    if (abs(x_pos(i)) > 5 || abs(y_pos(i)) > 5)
        t_conv = out.tout(i); % Update the "last seen outside" time
    end
end

fprintf('Time of arrival (within 5m tolerance): %.2f seconds\n', t_conv);