%% 
clc; clear;
equation = @(x, y) x + y;
x0 = 0;
y0 = 1;

dx = 0.1;
numIterations = 10;

x = zeros(numIterations+1, 1);
y = zeros(numIterations+1, 1);
x(1) = x0;
y(1) = y0;

for i = 1:numIterations
    x(i+1) = x(i) + dx;
    y(i+1) = y(i) + dx * equation(x(i), y(i));
end

xlabel('x');
ylabel('y');
title('Euler''s Method Solution');
disp([x, y]);
plot(x, y, 'b-o');




%% חישוב אינטגרל
clc; clear;
n=16;
x=linspace(0,1.6,n);
y= sin(x.^2);
trapz(x,y)

%% 


%% 
clc; clear;
syms y(t) k   % Define symbolic variables
% Define the differential equation
ode = diff(y(t), t) == -k * y(t);

initCond = y(0) == 2; % Define the initial condition
sol = dsolve(ode, initCond); % Solve the differential equation
k_val = solve(subs(sol, t, 4) == 1, k); % Find the value of k that satisfies y(4) = 1

solnum = subs(sol, k, k_val) % Substitute the found value of k in the solution
y_func = matlabFunction(solnum); % Generate a numerical function for y(t)
% Evaluate y(t) at specific time points
t_values = 0:0.1:15;
y_values = y_func(t_values);
t_when_y_025 = interp1(y_values, t_values, 0.25); % Find the time when y = 0.25
disp('the time when y = 0.25  :' )
disp(t_when_y_025);

% Given parameters
y0 = 2; t0 = 0;
t_target = 15;
h = 0.1; % Step size

% Initialize arrays to store time and y values
t = t0:h:t_target;
y = zeros(size(t));
y(1) = y0;

% Euler's method iteration
for i = 1:length(t)-1
    y(i+1) = y(i) + h * (-k_val * y(i));
end

% Plot the results
plot(t, y, 'b.-');
xlabel('t');
ylabel('y');
title('Euler''s Method Approximation');



%% 
sh = dsolve('Dy1=y2+0.01*x^2' , 'Dy2=-y1', 'y1(0)=0', 'y2(0)=1', 't')




%% 
%Q4
%1
syms k y(t)
f = k*y*(5000 - y);
dd = diff(y);
g = dsolve(dd == f, y(0) == 100);
%o = solve(subs(g, 't', 3) == 215);
o = 0.00006;
f = @(t, y) o*y*(5000 - y);

a = 0;
b = 30;
n = 1000;
d = (b-a)/n;
X = zeros(1, n);
Y = zeros(1, n);
X(1) = a;
Y(1) = 100;
for i = 2:n
    Y(i) = Y(i-1) + d*f(X(i-1), Y(i-1));
    X(i) = X(i-1) + d;
end

%2
ff = subs(g, 'k', o);
t_4 = double(subs(ff, t, 4))

%3
fff = subs(g, 'k', o);
y_4000 = double(solve(fff == 4000))

%4
%fe = subs(g, 'k', o);
syms t
fe = (5000*exp(0.3*t))./(49+exp(0.3*t));
subplot(1, 2, 1)
plot(X, Y, '-r', X, subs(fe, 't', X), '-k')
grid on
legend('oiler', 'function')
errors = zeros(1, n);
for i=1:n
    errors(i) = subs(fe, 't', X(i)) - Y(i);
end
subplot(1, 2, 2)
plot(X, errors)
legend('errors')
grid on





