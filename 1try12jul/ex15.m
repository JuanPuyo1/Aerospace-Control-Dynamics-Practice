clear all
close all
clc

%% Plant parameters

global MU Rp ve mb
MU = 4.28e4;
Rp = 3396;
ve = 4.4;
mb = 17000;
mp0 = 4000;

r0 = [Rp;0;0];
v0 = [0;0.241;0];

x0 = [r0;v0;mb+mp0];

%% NMPC design

% Prediction model and constraint function
par.model=@predsat8;
par.nlc=0;

% Prediction model order
par.n=7;
% par.nx=... alternative

% Sampling time and prediction horizon
par.Ts=10;
par.Tp=50;

% Weigth matrices
par.P=diag([5, 1e3, 1e3,   1e3, 1e3]);
%par.Q=...
par.R=diag([0.5,0.5,0.5]);

% Command input lower and upper bounds
par.lb=ones(3,1)*-800;
par.ub=ones(3,1)*800;

% par.Tstart=...  % Time at which the NMPC 
% controller is switched on (default=0).

K=nmpc_design_st2(par);

% K: structure used by the NMPC block in Simulink.
    
%% Simulation

ref = [Rp+160 0 0 0 1];
open("ex15nmpclaunch1.slx");
sim("ex15nmpclaunch1");

