%% תאוצה של מונה רדיו אטומי
clc; clear;
%נתונים
N0 = 100; %מספר אטומים התחלתי
k = 0.05; %מקדם

%פתרון באמצעות אוילר
dt = 0.1; %צעד הזמן
t = 0:dt:10; %טווח הזמן לחישוב 
N = zeros(size(t)); %מערך ריק לשמירת ערכי N

N(1) = N0; %ערך התחלתי

for i = 2:length(t)
    dNdt = -k*N(i-1); %משוואת הדיפוזיה
    N(i) = N(i-1) + dt * dNdt; %חישוב ערך N הבא
end

%הדפסת התוצאות
plot(t, N);
xlabel('זמן');
ylabel('מספר אטומים (N)');
title(' מתודת Euler');

%% חישוב גידול אוכלוסיה
% הפלט של הקוד הוא גרף של גודל האוכלוסייה כפונקציה של זמן
% האוכלוסייה תגדל באופן אקספוננציאלי
clc; clear;
r = 0.03;
K = 1000;
P0 = 100;
[t,P] = ode45(@(t,P) r*P*(1 - P/K), [0 100], [P0]);
plot(t,P)
xlabel('Time (years)')
ylabel('Population size')

%% משוואה לצמיחה של חיידקים
%התוצאה של קוד זה תהיה גרף של מספר החיידקים ביחס לזמן.
% אוכלוסיית החיידקים תגדל באופן אקספוננציאלי
clc; clear;
r = 0.2;
N0 = 100; %תנאי התחלה
h = 0.1; %צעד ראשון
t = 0:h:10; %טווח זמן
N = zeros(size(t)); %מערך פתרונות
N(1) = N0; 
for i = 2:numel(t) %פתרון בעזרת שיטת אוילר 
  N(i) = N(i-1) + r * h * N(i-1);
end
plot(t,N)
xlabel('Time (s)')
ylabel('Number of bacteria')











