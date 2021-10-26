function [newT,newN] = sigshift(x,t,n,k,show_plot)
%% Description:
%       Function sigshift shifts a given signal to the left or right
%% Input:
%       x = original signal sequence
%       t = values of time (x-axis)
%       n = current time
%       k = time delta for signal shifting
%       show_plot = bool to show_plot or not
%% Output:
%       newT = updated time index values (vector)
%       newN = updated value of current N pointer
%       displays signal sequence shifted by k units of time
%       if k is positive, causes delay
%       if k is negative, causes advance
%% Source code:
    newT = t - n - k; % old
%     newT = t - k;
    % Get the index of n in t
    temp_idx = find(t==n) - k;
    % Use that index to assign new n
    newN = newT(temp_idx);
    
    if show_plot == 1
        figure('NumberTitle', 'off', 'Name', 'Signal Shifting');
        % Plot of original signal
        subplot(2,2,3)
        stem(t,x,'filled');
        set(gca,'XGrid','off','YGrid','on')
        title('Original Signal x')

        % Plot of shifted signal
        subplot(2,2,4)
        stem(newT,x,'filled', 'or');
        set(gca,'XGrid','off','YGrid','on')
        title('Shifted signal by k time')

        % Compared previous plots
        subplot(2,2,[1 2])
        stem(t,x,'filled','DisplayName','Original');

        hold on

        stem(newT,x,'filled','DisplayName','Shifted');

        legend

        hold off

        set(gca,'XGrid','off','YGrid','on')
        title('Combined original and shift')
    end
end