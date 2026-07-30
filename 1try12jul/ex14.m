clear all
close all
clc

%% Plant parameters

global MU Rp ve mb

% Variables
MU = 0.3986e6;
Rp = 6.38e3;
ve = 6.4;
mb = 17000;
mp0 = 3000;

r0 = [7071,0,0]';
v0 = [0.15042, 7.5212, 0]';
x0 = [r0;v0;mb+mp0];

%% NMPC design

% Prediction model and constraint function
par.model=@predsat7;
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
par.lb=ones(3,1)*-132;
par.ub=ones(3,1)*132;

% par.Tstart=...  % Time at which the NMPC 
% controller is switched on (default=0).

K=nmpc_design_st2(par);

% K: structure used by the NMPC block in Simulink.
    
%% Simulation

ref = [9192.3, 0.22, 0.026, 0, 1];
open("ex14impnmpcsat2.slx");
sim("ex14impnmpcsat2");


