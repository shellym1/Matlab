
function tab(a,b,n)
fid = fopen('myfile.txt','wt'); % 'wt' means "write text" 
if (fid < 0)
error('could not open file "myfile.txt"'); 
end
for x=a:n:b
fprintf(fid,'%2s%4.2f%2s%15.8e\n', 'f(',x,')=',x^2*sin(x)) 
end
fclose(fid);