%% חישוב פונקציה בעזרת טור טיילור 
clc; clear;
syms x
f = sin(x);
f1 = taylor(f,x,0);

ezplot(f);
grid on 
hold on

ezplot(f1);
grid on
ylabel('ציר Y')
xlabel('ציר X')
legend({'f = sin(x)', 'f1 =x^6/120 - x^4/6 + x^2' })

%% 
clc; clear;
syms x
g = cos(x);
g1 = taylor(g,x,0);

ezplot(g);
grid on 
hold on 

ezplot(g1);
grid on 
ylabel('y')
xlabel('x')

%% 
clc; clear;
syms x
h = (1+2*x^2)*exp(x)^2;
h1 = taylor(h,x,0);

ezplot(h);
grid on 
hold on

ezplot(h1);
grid on 
ylabel('y')
xlabel('x')
legend({'h = (1+2*x^2)*exp(2)', 'h1 = taylor(h,x,0)' })

%% מציאת נקודת קיצון של הפונקציה
clear,clc;
syms x 
%f = x^5-3*x^2+1  %1
%f = -1/4*x^4+1/3*x^3 %2
f = 1/3*x^3-2*x^2+3*x+1 %3
df=diff(f); %גזירה
xex=double(solve(df==0,x,'Real',true));
yex=double(subs(f,x,xex));
m=[xex(1)-1;xex(1:end-1)+diff(xex)/2;xex(end)+1]; %יצירת נקודות סביב נקודות חשודות

kk=double(subs(df,x,m)); %ערכים של הנגזרת בנקודות שיצרנו בשורה קודמת
kkk=double(subs(df,x,m))<0; %בודקים האם ערכי הנגזרת שהתקבלו שליליים או לא
%שתי השורות העליונות לא קריטיות, רק צריך להבין את השלב הבא:
sd=diff(double(subs(df,x,m)));

tt = length(xex);
for i=1: tt
    if sd(i)>0
        s = 'min';
    elseif sd(i) <0
        s = 'max';
    else
        s='is not an extremum';
    end
    disp(['x=',num2str(xex(i)),' y=',num2str(yex(i)), ' is ',s]);
end
fplot(f,[xex(1)-1 xex(end)+1]) 
hold on
grid on 
plot(xex,yex,'*k')

%% חישוב cos לא על ידי חישוב ישיר
a= input ('enter low bound for Cos = ');
b= input ('enter high bound for Cos = ');
x = linspace (a,b,100);
Cos = fCos(x);
plot(x,Cos);


%% 
clear;clc;
syms x;
f = x^5 - 3*x^2 + 1;
df = diff(f);
xex = double(solve(df == 0, x, 'Real', true));
yex = double(subs(f, x, xex));
eps = 0.001; % a small value to check around each critical point
sd = sign(double(subs(df, x, xex - eps))) - sign(double(subs(df, x, xex + eps)));
for i=1:length(xex)
    if sd(i) > 0
        s = 'max';
    elseif sd(i) < 0
        s = 'min';
    else
        s = 'is not an extremum';
    end
    disp(['x = ', num2str(xex(i)), ' y = ', num2str(yex(i)), ' - ', s]);
end
fplot(f, [xex(1) - 1, xex(end) + 1]);
hold on; grid on;
plot(xex, yex, '*k');


%% 
doc fmaxbnd















