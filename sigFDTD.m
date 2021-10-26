function [FD, TD, Nrev, Nshf] = sigFDTD(x,t,n,k,show_plot)
%% Description:
%       Function sigFDTD shifts it by k time then folds the signal 
%       FD = reverse signal
%       TD = time delay
%% Input:
%       x = original signal sequence
%       t = values of time (x-axis)
%       n = current time
%       k = time delta for signal shifting
%       show_plot = bool to show_plot or not
%% Output:
%       TD = delayed version of signal
%       FD = reverse of signal
%       Nrev = Value of time N after reverse
%       Nshf = Value of time N after shift
%       N = final updated time index values (vector)
%% Source code:
    % Shift rev by k
    % sigshift(x,t,n,k,show_plot)
    [TD, Nshf] = sigshift(x,t,n,k,show_plot);
    % Get reverse signal by calling sigrev
    [FD,Nrev] = sigrev(x,TD,Nshf,show_plot);
end