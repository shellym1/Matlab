%% תרגיל שיעורי בית 2 
% חוקרים את התלות של כמות המלח S בטמפרטורה t
clc; clear;
%כתיבת נתונים מה02.03
f = fopen('f.txt','wt'); % fopen- יוצר קובץ באופן אוטומטי
if (f == 0)
error('could not open file "myfile.txt"'); 
end
% write some stuff to file 
fprintf(f,'%-8s\n','Experiment results 2 March 2019y.:'); fprintf(f,'\n');
fprintf(f,'%s %5s\n', 't','S');
fprintf(f,'\n');
for t=0:5:45
S = 0.92*t+66.7; 
fprintf(f,'%d %5.2f\n',t,S);
end

% כתיבת נתונים מה03.03
fprintf(f,'\n');
fprintf(f,'%-8s\n','Experiment results 3 March 2019y.:'); 
fprintf(f,'\n');
fprintf(f,'%s %5s\n', 't','S');
fprintf(f,'\n');
for t=50:5:95
S = 0.92*t+66.7; fprintf(f,'%d %5.2f\n',t,S);
end
fclose(f);

% קריאת התוצאות מהקובץ f
f = fopen('f.txt', 'rt'); 
if f == -1
    error('error open file');
end
fscanf(f,'%c',[1 inf]) 
fclose(f);

% פתיחת הקובץ
f = fopen('f.txt');
if f == -1
    error('error open file');
end
% ציון תאריך
day = 3;
month = 'March';
year = 2019;

%מציאת הנתונים הדרושים בקובץ
while 1
    %קריאת תאריך
    fday = fscanf(f,'Experiment results %d', 1);
    fmonth = fscanf(f,'%s', 1);
    fyear = fscanf(f,'%dy.:\n', 1);
    %השוואה בין ערך החודש שבקובץ לבין החודש שכאן למעלה

    ok = 1;
    %אם הערכים תואמים אז 1, אחרת 0
    if size(fmonth,2)==size(month,2)
        for i = 1:size(fmonth,2) 
            if fmonth(i) ~= month(i) 
                ok = 0;
                break
            end
        end
    else
        ok = 0;
    end
    if size(fday,1)==0
        break
        elseif fday==day && ok && fyear==year %אם התאריך הנתון זהה לתאריך הקריאה
            head = fscanf(f,'%c %c', 2); %קריאת הכותרת
            fprintf('Experiment results %d %s %d y.:\n\n', fday, fmonth, fyear); %כותרת התאריך
            fprintf('%3s %5s\n', 't','S'); %כותרת הטבלה
            M = fscanf(f,'%f %f')'; %קריאת מידות
            fprintf('%3.0f %7.2f\n', M'); %הצגת המידות
            break
    else %אם התאריכים לא זהים, נמשיך בחיפוש
        head = fscanf(f,'%c %c', 2);
        M = fscanf(f,'%f %f');
    end 
end
fclose(f);








