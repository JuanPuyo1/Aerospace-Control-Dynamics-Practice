clear all
close all
clc

%% Plant parameters

global l
l = 1.5;

%% NMPC design

% Prediction model and constraint function
par.model=@predrover20;
par.nlcon=@nconrover20;

% Prediction model order
par.n=3;
% par.nx=... alternative

% Sampling time and prediction horizon
par.Ts=1;
par.Tp=20;

% Weigth matrices
par.P=diag([2,2]);
par.Q=diag([20,20]);
par.R=diag([10,10]);

% Command input lower and upper bounds
par.lb=[0;-1.3963];
par.ub=[13.8889;1.3963];

par.Tstart=0;  % Time at which the NMPC 
% controller is switched on (default=0).

K=nmpc_design_st2(par);

% K: structure used by the NMPC block in Simulink.
    
%% Simulation

ref = [0;0];

open("ex20improver20.slx");
sim("ex20improver20");
