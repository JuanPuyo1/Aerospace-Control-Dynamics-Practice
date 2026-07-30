clear all
close all
clc

%% Plant parameters

...

%% NMPC design

% Prediction model and constraint function
par.model=@pred_model;
par.nlcon=@nlcon;

% Prediction model order
par.n=...
% par.nx=... alternative

% Sampling time and prediction horizon
par.Ts=...
par.Tp=...

% Weigth matrices
par.P=...
par.Q=...
par.R=...

% Command input lower and upper bounds
par.lb=...
par.ub=...

% par.Tstart=...  % Time at which the NMPC 
% controller is switched on (default=0).

K=nmpc_design_st2(par);

% K: structure used by the NMPC block in Simulink.
    
%% Simulation

...


