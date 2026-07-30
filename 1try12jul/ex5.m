clear all
close all
clc

%% Plant parameters

global MU Rp ve mb

MU = 0.3986e6;
Rp = 6.38e3;
ve = 5;
mb = 5698.707;
mp0 = 2301.293;

r0 = [6871;0;0];
v0 = [0;8.3929;0];
x0 = [r0;v0;mb+mp0];

%% NMPC design

% Prediction model and constraint function
par.model=@predsat6;
par.nlc=0;

% Prediction model order
par.n=7;
% par.nx=... alternative

% Sampling time and prediction horizon
par.Ts=20;
par.Tp=90;

% Weigth matrices
par.P=diag([0.3,5e5,5e5,5e5,5e5]);
%par.Q=...
par.R=diag([0.05, 0.05, 0.05]);

% Command input lower and upper bounds
par.lb=ones(3,1)*-132;
par.ub=ones(3,1)*132;

par.Tstart=400;  % Time at which the NMPC 
% controller is switched on (default=0).

K=nmpc_design_st2(par);

% K: structure used by the NMPC block in Simulink.
    
%% Simulation


ref = [6971 0 0 0 1];
open("ex5impnpmc2.slx");
sim("ex5impnpmc2");


