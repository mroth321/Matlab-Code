clc; close all
Ro=1000; %Ohm
To=300; %K
B=3500;
T=773; %K
T_range=To:T;

for i=1:length(T_range)
   
  R=exp(B*((1/T_range(i))-(1/To)));  
  R_out(i)=(R/(R+1))-.5;
    
end    

figure;
plot(T_range,R_out);
ylabel('Output');
xlabel('Temperature (K)');
title ('Normalized Output from 300K to 773 K');

