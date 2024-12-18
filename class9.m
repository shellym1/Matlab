clc; clear;
[X,Y]=ode45(@func4,[0,20],[0,1]); 
plot(X,Y(:,1));
hold on; 
plot(X,Y(:,2));

%% תרגיל 1 שיעורי בית 
clc; clear;
Y0=[0;0.1];
[X,Y]=ode45(@func5, [0,16],Y0);
plot(X,Y(:,1))
grid on
hold on
%pause;
plot(Y(:,1),Y(:,2));

%% תרגיל 2 שיעורי בית
clc; clear;
[X,Y] = ode45(@func6, [0,20], [0,1])
plot(X, Y(:,1), '-ok', 'MarkerSize', 2);
grid on 


