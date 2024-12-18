%% בעיר של 20,000 תושבים קיימים 50 חולים מדבקים שגורמים למגיפה
%לכתוב תכנית לסימולציית הדינמיקה של המגיפה
%לקבוע באיזה יום יהיה המקסימלי
% clc; clear;
% function class7
%     x0 = 50;
%     y0 = 20000;
%     tspan = [0 100];
%     [t, Z] = ode45(@rate_func, tspan, [x0 y0]);
%     [max_cases, max_day_idx] = max(Z(:, 1));
%     max_day = t(max_day_idx);
%     fprintf('Maximum number of cases: %d\n', max_cases);
%     fprintf('Day with max cases: %d\n', max_day);
% 
%     figure
%     plot(t, Z(:, 1), 'r', 'LineWidth', 2)
%     hold on
%     plot(t, Z(:, 2), 'b', 'LineWidth', 2)
%     legend('Infected', 'Healthy')
%     xlabel('Days')
%     ylabel('Number of people')
%     title('Epidemic spread over time')
%     grid on
% end
% 
% function dZdt = rate_func(t, Z)
%     k = 0.0001;
%     x = Z(1);
%     y = Z(2);
%     dxdt = -k *x * y;
%     dydt = k * x * y - y;
%     dZdt = [dxdt; dydt];
% end

% %% 
% function class7
%     x0 = 50;
%     y0 = 20000;
%     tspan = [0 100];
%     [t, Z] = ode45(@rate_func1, tspan, [x0 y0]);
%     [max_cases, max_day_idx] = max(Z(:, 1));
%     max_day = t(max_day_idx);
%     fprintf('Maximum number of cases: %d\n', max_cases);
%     fprintf('Day with max cases: %d\n', max_day);
% 
%     figure
%     plot(t, Z(:, 1), 'r', 'LineWidth', 2)
%     hold on
%     plot(t, Z(:, 2), 'b', 'LineWidth', 2)
%     legend('Infected', 'Healthy')
%     xlabel('Days')
%     ylabel('Number of people')
%     title('Epidemic spread over time')
%     grid on
% end
% 
% function dZdt = rate_func1(t, Z)
%     k = 0.0001;
%     x = Z(1);
%     y = Z(2);
%     dxdt = -k *x * y;
%     dydt = k * x * y - y;
%     dZdt = [dxdt; dydt];
% end




