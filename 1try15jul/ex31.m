clear all
close all
clc

%%

open("ex31efkimpc.slx");

out = sim("ex31efkimpc");

a = squeeze(out.simout.Data);
RMS = norm(a)/sqrt(length(a));