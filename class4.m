%% y=2*exp(x)-2*x-3;
% בעזרת פונקציה חיצונית
clc; clear;
%גרף הפונקציה
figure(1)
ezplot('y=2*exp(x)-2*x-3')
grid on

%נחשב לפי שיטת החציה
a=0.5;
b=1;
eps=10^(-6); 
l=b-a;
m=1;
format long

while l>=eps 
    x=(a+b)/2;
    c(m)=x;
    if myf1(a)*myf1(x)<0 
        b=x;
    else
        a=x;
    end
    m=m+1; 
    l=b-a; 
end

disp('number of iterations: '); 
disp(m);
disp('The result is:');
c(m-1)
figure(2) 
plot(c,'r-')


%% מציאת שורש התרגיל בעזרת bisection
% y = x^3-1.1*x^2-2.2*x+1.8

clc; clear;
figure(1) 
ezplot('x^3-1.1*x^2-2.2*x+1.8') 
grid on


f = inline('x^3-1.1*x^2-2.2*x+1.8','x'); 
a = -1.5; b = -1;
delta = 1e-4; %רמת דיוק
ya=f(a); 
yb=f(b);
if ya*yb > 0 ,error('?error?'),end
while b-a >= delta 
    c=(a+b)/2; 
    yc=f(c);
    if yc==0
        a=c;
        b=c;
    elseif yb*yc>0 
        b=c;
        yb=yc;
    else
        a=c;
        ya=yc;
    end
end

format long %הרבה מספרים אחרי הנקודה
c=(a+b)/2 %שורש
err=abs(b-a)
yc=f(c)

figure(2)
x = -1.5:0.1:-1;
y = x.^3-1.1*x.^2-2.2*x+1.8; 
plot(x,y,c,yc,'d')
grid on


%% y=(x-2).*cos(x)-1
% ללא פונקציה חיצונית
clc; clear;
figure(1) 
ezplot('(x-2).*cos(x)-1') 
grid on

f = inline('(x-2).*cos(x)-1');
a=-6;
b=-4;
eps=10^(-6);
l=b-a;
m=1;

fa = f(a);
fb = f(b);
format long

while l>eps
    x = (a+b)/2;
    c(m)=x;
    if fa*fb<0 
        b=x;
    else a=x; 
    end 
    m=m+1; 
    l=b-a; 
end
disp('number of iterations: ') 
disp(m)
disp('The result is:')
c(m-1)
figure(2) 
plot(c,'r-');


%% y = 3*x^4 + 8*x^3 +6*x^2-10
clc; clear;

figure(1) 
ezplot('3*x^4 + 8*x^3 +6*x^2-10') 
grid on

f = inline('3*x^4 + 8*x^3 +6*x^2-10');
a=0;
b=1;
eps=10^(-7);
l=b-a;
m=1;

fa = f(a);
fb = f(b);

while l>eps
    x = (a+b)/2;
    c(m)=x;
    if fa*fb<0 
        b=x;
    else a=x; 
    end 
    m=m+1; 
    l=b-a; 
end

disp('number of iterations: ') 
disp(m)
disp('The result is:')
c(m-1)
figure(2) 
plot(c,'r-');


%% מציאת פתרון למשוואה לא לינארית
% שיטת רגולר פלסי
clc; clear;

x=1.5:0.00001:3; 
y=sin(x)+cos(x)+exp(x)-8; 
plot(x,y)
syms x;

% Input Section
y = input('Enter non-linear equations: '); 
a = input('Enter a: ');
b = input('Enter b: ');
e = input('eps: ');

fa = eval(subs(y,x,a)); 
fb = eval(subs(y,x,b));

if fa*fb > 0
    disp('These initial values are not correct');
else
    c = a - (a-b) * fa/(fa-fb);
    fc = eval(subs(y,x,c)); 
    fprintf('\n\na\t\t\tb\t\t\tc\t\t\tf(c)\n'); 
    while abs(fc)>e
        fprintf('%f\t%f\t%f\t%f\n',a,b,c,fc); 
        if fa*fc< 0
            b =c;
            fb = eval(subs(y,x,b));
        else
            a =c;
            fa = eval(subs(y,x,a));
        end
        c = a - (a-b) * fa/(fa-fb);
        fc = eval(subs(y,x,c));
    end
    fprintf('\nRoot is: %f\n', c); 
end




%% מציאת שורש בעזרת fzero
% ללא פתרון מרוכב
clc; clear;
x=-pi:0.01:pi;
plot(x,cos(x));
grid on
hold

x=fzero('cos',-1)
plot(x,cos(x),'bd')

%% מציאת שורש בעזרת roots 
% כולל פתרון מרוכב
clc; clear;
k=[1,-3,3,-3,2];
r=roots(k)












