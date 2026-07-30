clear all
close all
clc

%% Plant parameters

global MU Rp ve mb
MU = 0.3986e6;
Rp = 6.38e3;
ve = 6.4;
mb = 17000;
mp0 = 3000;

rp0 = [7071,0,0]';
vp0 = [0.15042, 7.5212, 0]';
x0 = [rp0;vp0;mb+mp0];

%% NMPC design

% Prediction model and constraint function
par.model=@predsat26;
par.nlc=0;

% Prediction model order
par.n=7;
% par.nx=... alternative

% Sampling time and prediction horizon
par.Ts=10;
par.Tp=50;

% Weigth matrices
par.P=diag([20, 2e3, 2e3,   2e3, 2e3]);
%par.Q=...
par.R=diag([30, 30, 30]);

% Command input lower and upper bounds
par.lb=ones(3,1)*-132;
par.ub=ones(3,1)*132;

par.Tstart=0;  % Time at which the NMPC 
% controller is switched on (default=0).

K=nmpc_design_st2(par);

% K: structure used by the NMPC block in Simulink.
    
%% Simulation

ref = [9192.3, 0.22, 0.026, 0, 0];



open("exam26nmpcimp.slx");
sim("exam26nmpcimp");
