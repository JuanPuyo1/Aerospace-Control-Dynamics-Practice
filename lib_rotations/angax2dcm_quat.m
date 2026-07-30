function [T,q]=angax2dcm_quat(ax,ang)

q=[cos(ang/2);ax*sin(ang/2)];
T=qua2dcm(q);




