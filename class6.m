%% צורת כתיבה למדר
clc; clear;
syms y(t)
Dy = diff(y,t);
clali = dsolve( Dy==exp(y)*t.^2 )
prati = dsolve( 'Dy = exp(y)*t^2','y(0)=8') %מציאת פתרון פרטי

%% צורת כתיבה למדר
clc; clear;
Dy = diff(y);
clali = dsolve( Dy==exp(y)*x.^2 )
syms y(x)
prati = dsolve( Dy == exp(y)*x.^2,'y(0)=8') %מציאת פתרון פרטי

%% 
clc; clear;
syms y(x)
Dy = diff(y);
pitaron_clali=dsolve( Dy==-2*x*y )
pitaron_prati=dsolve( Dy == -2*x*y,'y(0)=1')

%% עבור מדר עם נעלם a
%חוק השינוי של כמות/מספר ְיצוּרים חיים בהתאם לזמן
clc; clear;
syms y(t)
syms a
Dy = diff(y);
clali = dsolve(Dy == a.*y)
prati = dsolve(Dy == a.*y, 'y(0) = 1')

%% ode VS dsolve
clc; clear;
syms y(x)
Dy = diff(y);
pitaron_prati=dsolve( Dy == -2*x*y,'y(0)=1')

figure(1)
ezplot(pitaron_prati,[0,2])
hold

figure(2)
ode45(@func1,[0,2],1);

%% x^3-2*y, [0,1]
clc; clear;
FDY = dsolve('Dy = x^3 - 2*y','y(0) = 1','x')
v = symvar(FDY)
dya = @(X) double(subs(FDY,v,X))
x = 0:0.1:1; 
y0 = 1;
n = length(x);
ya = dya(x)
plot(x,ya,'r*');
tspan = [x(1) x(n)];
[xx,y] = ode45(@(xx,y) xx^3 - 2*y, tspan,y0);
figure;
plot(x,ya,'r*',xx,y,'k*');

%% 
clc;
FDY = dsolve('Dy = x^3 - 2*y','y(0) = 1','x') 
%------------
syms y(x)
Dy = diff(y);
matan=dsolve( Dy == x^3 - 2*y,'y(0)=1',x)
%------------
figure(1)
ezplot(matan,[0,1])
 x = 0:0.1:1; 
 y0 = 1; 
 n = length(x)
 tspan = [x(1) x(n)]; 
 figure(2)
 ode45(@(x,artem) x^3 - 2*double(artem), tspan,y0); 

 %% 
% clc; clear;
% syms y(t)
% syms a
% Dy = diff(y);
% clali = dsolve(Dy == -a*.S*I)
% prati = dsolve(Dy == a.*y, 'y(0) = 1')





