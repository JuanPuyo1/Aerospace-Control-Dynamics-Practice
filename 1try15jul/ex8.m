clear all
close all
clc

%% Plant parameters

global MU Rp ve mb
MU = 0.3986e6;
Rp = 6.38e3;
ve = 5;
mb = 5458.6842;
mp0 = 2541.3158;

rp0 = [6871, 0, 0]';
vp0 = [0, 8.3929, 0]';


x0 = [rp0;vp0;mb+mp0];

%% NMPC design

% Prediction model and constraint function
par.model=@predsat815;
par.nlc=0;

% Prediction model order
par.n=7;
% par.nx=... alternative

% Sampling time and prediction horizon
par.Ts=10;
par.Tp=60;

% Weigth matrices
par.P=diag([0.4, 3e6, 3e6, 3e6, 3e6]);
%par.Q=...
par.R=diag([0.3, 0.3, 0.3]);

% Command input lower and upper bounds
par.lb=ones(3,1)*-132;
par.ub=ones(3,1)*132;

par.Tstart=400;  % Time at which the NMPC 
% controller is switched on (default=0).

K=nmpc_design_st2(par);

% K: structure used by the NMPC block in Simulink.
    
%% Simulation

ref = [6971 0 0 0 0];
open("ex8impnmpc6.slx");
sim("ex8impnmpc6");

