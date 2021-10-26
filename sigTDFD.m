function [FD, T, Nrev, Nshf] = sigTDFD(x,t,n,k,show_plot)
%% Description:
%       Function sigTDFD folds the signal then shifts it by k time
%       FD = reverse signal
%% Input:
%       x = original signal sequence
%       t = values of time (x-axis)
%       n = current time
%       k = time delta for signal shifting
%       show_plot = bool to show_plot or not
%% Output:
%       FD = reverse of signal
%       N = final updated time index values (vector)
%% Source code:
    % Get reverse signal by calling sigrev
    [FD, Nrev] = sigrev(x,t,n,show_plot);
    % Shift rev by k
    [T,Nshf] = sigshift(FD,t,Nrev,k,show_plot);
end