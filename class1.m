%% פותח קובץ שנמצא בתוך התקייה של matlab
clc; clear;
filename = 'my.jpg';
A = importdata(filename);
image(A);

%% תרגילים מהחוברת:

%% יצירת קובץ טקסט וכתיבה לתוכו
% open file
clc; clear;
fid = fopen('myfile.txt','wt'); % fopen- יוצר קובץ באופן אוטומטי
if (fid < 0)
error('could not open file "myfile.txt"'); 
end
% write some stuff to file 
for i=1:100
fprintf(fid,'Number = %3d Square = %6d\n',i,i*i); 
end
% close the file fclose(fid);

%% יוצר חלון על המסך
k=1;
while k==1
% myft
k = menu('What to do?', 'Continue work', 'Finish work'); 
end

%% כתיבה לקובץ מלמעלה ודירסה של המידע הקודם, /n עושה אנטר
clc
% open file
fid = fopen('myfile.txt','wt'); % 'wt' means "write text" 
if (fid < 0)
error('could not open file "myfile.txt"'); 
end
% write some stuff to file 
fprintf(fid,'I LOVE '); 
fprintf(fid,'MATH \n'); %\n means enter
fprintf(fid,'AND ice cream');
fclose(fid);

%% 
clc
% open file
yuval = fopen('myfileyuve.txt','wt'); % 'wt' means "write text" 
if (yuval < 0)
error('could not open file "myfile.txt"'); 
end
% write some stuff to file
fprintf(yuval,'yuval LOooooooooVE MATH \n'); 
fprintf(yuval,'AND ice cream\n');
fprintf(yuval,'%50s\n', 'matla'); % המספר לפני הs מסמל כמה רווח יהיה לפני המילה מטלה
fclose(yuval);

%% ככשמים מינוס לפני המספר אז זה מדביק את הטקסט לשמאל
clc
% open file
fid = fopen('myfile.txt','wt'); % 'wt' means "write text"
if (fid < 0)
    error('could not open file "myfile.txt"');
end
fprintf(fid,'%6.2f\n', pi); %??3.14
fprintf(fid,'%-6.2f\n', pi); % 3.14??
fprintf(fid,'%14.4e\n', exp(-5)); %???6.7379e-003
fprintf(fid,'%-14.4e\n', exp(-5)); %6.7379e-003???
fprintf(fid,'%8s\n', 'matla'); % ???matla
fprintf(fid,'%-8s\n', 'matla') ;%matla???

%% קריאה לפונקצית tab
% והדפסה בפונקצית myfile
tab(0.65,1.05,0.1)

%% יצרת קובץ T 
% וכתיבת הוקטור לקובץ בפורמט של נקודה עשרונית
clc
V=[pi 3*pi -0.3 5.08] ;
% open file
fid = fopen('T.txt','wt+'); % 'wt' means "write text" 
if (fid < 0)
error('could not open file "T.txt"'); 
end
fprintf(fid,'%4.2f ',V); 
fclose(fid);

%% קריאת הקובץ בעזרת fscanf
clc
FT=fopen('T.txt','rt+'); 
V1nov=fscanf(FT,'%f',[1,4]);
fclose(FT); 
V1nov

%% קבלת מטריצה מקובץ טקסט 
clc; clear;
% נבנה את הפונקציה בתור חישוב של 2 שורות בלבד
x = 0:pi/10:pi;y=[x;sin(x)];
fid = fopen('sin.txt','w');
fprintf(fid,['%5.3f ' ...
    '%10.6f\n'],y);
fclose(fid);

% נקרא את הקובץ בתור 2 עמודות בלבד
fid = fopen('sin.txt','r');
[A,count] =fscanf(fid,'%g',[2,10]);
A
A=A'
count

%% כתיבת מטקיצה לקובץ טקסט והדפסה שלה
clc; clear;

A=[ 1.322 -20 -3.2 4.45;
    5.4 20 72.5 8;
    9.45 20 -11.25 12.455;];


f = fopen('matr_1.txt','wt'); % open file for writing
if f==-1 %
  error('Error opening file for writing');
end
fprintf(f,'%4.4f %d %4.4f %4.4f\n',A');
fclose(f);
% Read matrix A from text file
%------------------------------------
f = fopen('matr_1.txt', 'rt');
if f == -1
  error('Error opening file for reading');
end
disp('Reading a matrix written in a specific format fromtext file: ');
A=fscanf(f, '%f %d %f %f\n',[4 3])
fclose(f);

%% מערך עם 2 אנשים, התוכן של השדה לא מוצג
S(1).name = 'Nicholas';
S(1).syrname='Iano';
S(1).age = 53;
S(1).salary = 2500;
S(2).name = 'Peter';
S(2).syrname='Sheko';
S(2).age = 33;
S(2).salary = 1500;
S
S.age %מדפיס ב2 שורות נפרדות
A = [S.age] %מדפיס בשורה אחת

%% 
for i = 1:2
    mas(i).p = input('Enter matrix ');
end

for i = 1:2
    ch = int2str (i);
    chl = 'K';
    ch2 = '.txt';
    str = strcat(chl, ch, ch2);
    [F,mes] = fopen(str,'wt');
    fprintf(F,'%d %d %d\n', mas(i).p);
    fclose (F);
end









