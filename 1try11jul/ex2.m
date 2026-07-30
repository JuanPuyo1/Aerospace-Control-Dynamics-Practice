clear all
close all
clc

%%

open("ex2impefk.slx");

out = sim("ex2impefk");

a = squeeze(out.simout.Data);

RMS = norm(a)/sqrt(length(a));