%% פתירת מערכת משוואות
clc; clear;
fun = @func2;
xx0 = [-0.5,1]; %קירוב ראשוני
x = fsolve(fun, xx0);
display(x,'Optimization Toolbox:')

