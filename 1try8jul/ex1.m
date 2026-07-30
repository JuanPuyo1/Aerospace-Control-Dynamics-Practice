clear all
close all
clc

%%

open("ex1impefk.slx");
out = sim("ex1impefk");

a = squeeze(out.simout.Data);

RMS = norm(a)/sqrt(length(a));