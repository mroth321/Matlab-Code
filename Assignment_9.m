%%% Melissa Roth
%% Question 1
clc; close all

L1=1.5e-3; %H
L2=5e-3; %H
R=1000; %ohm
C=100e-6; %F

A = [0, 1/C, -1/C; -1/L1, 0, 0; 1/L2, 0,-R/L2];
B = [0; 1/L1; 0];
C = [0 0 R];
D = [0]; 

sys = ss(A,B,C,D);  % build state space object


f= 1;            %kHz
fo=.2*f;
amp=10;           %V
omega=2000*pi*f;   %rad/s
T=2*pi/omega;
t=0:T/30:1000*T;
Vs=amp*sin(omega*t);

x0=[0;0;0];

y=lsim(sys,Vs,t,x0);
z=.2*y;

figure
plot(t,y)
hold on;
plot(t,Vs)
hold off;
xlabel('time');
ylabel ('voltage');
legend('output', 'input')
xlim([990*T 995*T])
