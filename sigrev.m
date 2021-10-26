function [r, newN] = sigrev(x,t,n,show_plot)
%% Description:
%       Function sigrev returns the reverse of the signal x
%% Input:
%       x = original signal sequence
%       t = values of time (x-axis)
%       n = current time
%       show_plot = bool to show_plot or not
%% Output:
%       r = updated signal sequence data in reverse
%       newN = updated index of current time wrt to s
%% Source code:
    % To reverse: Flip the signal from left to right
    r = fliplr(x);
    % Get the index of n in t
    temp_idx = length(x)- find(t==n) + 1;
    % Use that index to assign new n
    newN = t(temp_idx);
    
    if show_plot == 1
        figure('NumberTitle', 'off', 'Name', 'Signal Reversal');
        % Plot of reversed signal
        subplot(2,1,1)
        stem(t,r,'filled','or');
        set(gca,'XGrid','off','YGrid','on')
        title('Reversed Signal x')
        
        % Plot of original signal
        subplot(2,1,2)
        stem(t,x,'filled');
        set(gca,'XGrid','off','YGrid','on')
        title('Original Signal x')
    end
end