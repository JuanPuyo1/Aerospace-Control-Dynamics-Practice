clear all
close all
clc

%% Plant parameters

global l
l = 1.5;

%% NMPC design

% Prediction model and constraint function
par.model=@predrover2;
par.nlcon=@nconrover;

% Prediction model order
par.n=3;
% par.nx=... alternative

% Sampling time and prediction horizon
par.Ts=1;
par.Tp=20;

% Weigth matrices
par.P=diag([13,13]);
par.Q=diag([1,1]);
par.R=diag([10,30]);

% Command input lower and upper bounds
par.lb=[0; -1.3963];
par.ub=[13.8889; 1.3963];

% par.Tstart=...  % Time at which the NMPC 
% controller is switched on (default=0).

K=nmpc_design_st2(par);

% K: structure used by the NMPC block in Simulink.
    
%% Simulation

ref = [0;0];


open("ex12nmpcrover2.slx");
sim("ex12nmpcrover2");


