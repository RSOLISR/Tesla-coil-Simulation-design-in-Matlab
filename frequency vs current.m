clear all, close all, clc
R=10;   %Resistance
C=0.023e-6;  %Capacitance
L=19.22e-6;   %Inductance
w_0=1/sqrt(C*L);  %Resonant Frequency
Z1=1/sqrt(R^2+(w_0*L-(1/w_0*C))^2);
V=10000;
%I=V*(Z1).^-1;
n=1;
for w=0.85e+06:1:1.7*w_0
    I(n)=abs(V/(1i*w*L+(1/(1i*w*C))+R));  %output voltage as a function of frequency
    ww_0(n)=w/w_0;%Normalized Frequency
    n=n+1;
end

plot(ww_0,I)