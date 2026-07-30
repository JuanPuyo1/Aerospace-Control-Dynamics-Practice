clear all
close all

clc


%%

x0 = [-7/2;4];

open("ex10impsliding.slx");

out = sim("ex10impsliding");

simout = out.simout.Data;
