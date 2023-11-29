clear;clc;
% Ch5_4;
% 辅助计算正交多项式
% phi_3

syms t
f1=(t^3-2/5*t)*(t^2-2/5)*(1+t^2);
calcu1=int(f1,t,-1,1);
calcu2=int(((t^2-2/5)^2*(1+t^2)),t,-1,1);
calcu3=int(t^2*(1+t^2),t,-1,1);
a=calcu1/calcu2;
b=calcu2/calcu3;
phi=(t-a)*(t^2-2/5)-b*t
