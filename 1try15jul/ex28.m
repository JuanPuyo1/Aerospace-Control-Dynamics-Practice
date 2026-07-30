clear all
close all
clc

%%

open("ex28impefk28.slx");
out = sim("ex28impefk28");

a = squeeze(out.simout.Data);

RMS = norm(a)/sqrt(length(a));