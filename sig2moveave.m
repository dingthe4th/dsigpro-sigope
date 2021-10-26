function M = sig2moveave(x,t,show_plot)
%% Description:
%       Function sig2movmean returns the 2-point moving average of signal x
%% Input:
%       x = original signal sequence
%       t = values of time (x-axis)
%       show_plot = bool to show_plot or not
%% Output:
%       ma = 2-point moving average version of signal x
%% Source code:
    % Get the moving average of signal x
    M = movmean(x,[1 0]);
    
    if show_plot == 1
        figure('NumberTitle', 'off', 'Name', 'Signal 2P Moving Average');
        % Plot of reversed signal
        subplot(2,1,1)
        stem(t,M,'filled','or');
        set(gca,'XGrid','off','YGrid','on')
        title('2P Moving Average of Signal x')
        
        % Plot of original signal
        subplot(2,1,2)
        stem(t,x,'filled');
        set(gca,'XGrid','off','YGrid','on')
        title('Original Signal x')
    end
end