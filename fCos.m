%% clc cos function
function [ Sn ] = fCos( x )
% Cos (x) = 1 - x^2/2 + x^4/24 - x^6/720 + O(x^7)

x = x * pi / 180; % Convert to radians
n = 0; % First value of n
an = 1; % First term in the series
Sn = an; % First sum of the terms
E = inf; % Some arbitrary big value
while E > 0.000001 % While the estimated error is BIGGER than tolerance
    n = n + 1; % Increment n
    an = x.^(2*n) / factorial(2*n); % Next term in the series 
    b = mod (n,2);
    if (b==1)
        Sn = Sn - an;
    else
        Sn = Sn + an;
    end
    E = abs(an/Sn); % Estimated error
end
end
