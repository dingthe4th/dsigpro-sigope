function [sig, T, N] = sigtscale(x,t,n,r,show_plot)
%% Description:
%       Function sigrev returns the time scaling version or the
%       downsampled version of a given signal x
%% Input:
%       x = original signal sequence
%       t = values of time (x-axis) (vector)
%       n = current time
%       r = sampling rate
%       show_plot = bool to show_plot or not
%% Output:
%       sig = downsampled signal
%       T = new time vector
%       N = new N value (current time)
%% Source code:
    % Downsample x by r units
    sig = downsample(x,r);
    % Get update time vector T
    T = unique(fix(t/r));
    % Use that index to assign new n
    n_idx = ceil(find(t==n)/r);
    N = T(n_idx);
      
    if show_plot == 1
        figure('NumberTitle', 'off', 'Name', 'Signal Downscaling');
        % Plot of reversed signal
        subplot(2,1,1)
        stem(T,sig,'filled','or');
        set(gca,'XGrid','off','YGrid','on')
        title('Downscaled Signal')
        
        % Plot of original signal
        subplot(2,1,2)
        stem(t,x,'filled');
        set(gca,'XGrid','off','YGrid','on')
        title('Original Signal x')
    end
end