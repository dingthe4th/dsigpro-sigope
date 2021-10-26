function s = sigmul(x1,x2,t)
%% Description:
%       Function sigsum returns product of signal sequences x1 and x2
%% Input:
%       x1 = first signal sequence
%       x2 = second signal sequence
%       t = values of time (x-axis)
%% Output:
%       s = sum of x1 and x2
%% Source code:
    [x1, x2, t] = zeropad(x1,x2,t);
% Plot of x1
    figure('NumberTitle', 'off', 'Name', 'Signal Multiplier');
    subplot(2,2,3)
    stem(t,x1,'filled');
    set(gca,'XGrid','off','YGrid','on')
    title('Signal x1')
% Plot of x2
    subplot(2,2,4)
    stem(t,x2,'filled');
    set(gca,'XGrid','off','YGrid','on')
    title('Signal x2')
% Plot of sum
    s = x1 .* x2;
    subplot(2,2,[1 2])
    stem(t,s,'filled','or');
    set(gca,'XGrid','off','YGrid','on')
    title('Multiplied Signals')
end