clear all
close all
clc

%% Plant parameters

global MU Rp ve mb
MU = 0.3985e3;
Rp = 6.38e3;
ve = 5;
mb = 5698.707;
mp0 = 2301.293;
rp = [6871,0,0]';
vp = [0,8.3929,0]';
x0 = [rp;vp;mb+mp0];

%% NMPC design

% Prediction model and constraint function
par.model=@predsat816;
par.nlc=0;

% Prediction model order
par.n=7;
% par.nx=... alternative

% Sampling time and prediction horizon
par.Ts=10;
par.Tp=50;

% Weigth matrices
par.P=diag([2,6e5,6e5,6e5,6e5]);
%par.Q=...
par.R=diag([0.05,0.05,0.05]);

% Command input lower and upper bounds
par.lb=ones(3,1)*-132;
par.ub=ones(3,1)*132;

par.Tstart=400;  % Time at which the NMPC 
% controller is switched on (default=0).

K=nmpc_design_st2(par);

% K: structure used by the NMPC block in Simulink.
    
%% Simulation

ref = [6971 0 0 0 0];

open("ex16impnmpc16.slx");
sim("ex16impnmpc16");


