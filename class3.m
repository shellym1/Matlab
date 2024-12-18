%% חישוב שטח משולש בעזרת הרון

clc; clear;
geron=@(a,b,c) real(0.25*sqrt((a+b+c)*(a+b-c)*(a+c-b)*(b+c-a)));
geron(3,4,5)


%% 
x = 0:0.01:5;
y1 = exp(-x).*sin(x); 
y2 = x.^-0.1-0.87; 
plot(x,y1,x,y2)
grid on
[X,Y] = ginput()

%% 
clc; clear;
f=inline('x^2','x');
f
f(5)

%% 
clc; clear;
f=inline('(x.^2)/2-(x.^4)/4') 
fzero(f,1)
ezplot(f, [-1,1])



