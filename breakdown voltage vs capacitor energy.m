close all;  
clc;
C=0.023e-6;  %Capacitance
p=1;
n=1000;     %at constant freq of 1kHz
BPS=[];     %break down per second
V=[];       %break down voltage at differnt spark length
for i=1:1:200
    d=[0.1:0.001:30];
    V = (p*d)+ 0.7;
    E=0.5*C*(V*1000).^2;
end
plot(V,E),grid;
xlabel('Breakdown voltage[KV]');
ylabel('Capacitor Energy [joule]');
    