%% מצאו את מהירות הרוח לאחר שהיא עוברת יער 
clc; clear;
V0=12; %מהירות הרוח הראשונית
k=-log(11.8/12); %מקדם k
t=0:1:150;
Vdot= @(S, V) -k*V; %derivative function
[T V]=ode45(Vdot,t,V0);
plot(T, V);
ylabel('V(S),[m/s]');
xlabel('S,[m]');
title('Changes of wind speed per distance V(S)');
disp ('Wind speed after 150 m = ');
disp (V(150));
