clear all, close all, clc
C=0.023e-6;  %Capacitance
p=1;    %pressure at 1 atm
n=1000;     %at constant freq of 1kHz
BPS=[];     %break down per second
V=[];       %break down voltage at differnt spark length
for i=1:1:200
    d=[1:0.001:30];
    V = p*d + 0.7;
    BPS=n*V.^-1;
end
plot(V,BPS),grid;
xlabel('Breakdown voltage[KV]');
ylabel('Firing Rate[BPS]');
    