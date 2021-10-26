function [newX1, newX2, newT] = zeropad(x1,x2,t)
%% Description:
%       Adds  zero padding if length of signal sequence is not equal
%       (safeguard function)
%% Input:
%       x1 = first signal sequence
%       x2 = second signal sequence
%       t = values of time (x-axis)
%% Ouput:
%       newX1 = updated x1
%       newX2 = updated x2
%       newT = updated t
%% Source code:
    % Do nothing if equal
    if length(x1) == length(x2)
       newX1 = x1;
       newX2 = x2;
       newT = t;
    % Add n zeroes to x1, n is the difference
    % of length x2 and x1
    elseif length(x1) < length(x2)
        newX1 = [x1 zeros(length(x2)-length(x1))];
        newX2 = x2;
        tempX = zeros(1,(length(x2)-length(x1)));
        for i = 1: length(x2)-length(x1)
            if i == 1
                tempX(i) = t(end) + 1;
            else
                tempX(i) = tempX(end)+1;
            end
           
        end
        newT = [t tempX];
    % Add n zeroes to x2, n is the difference
    % of length x1 and x2
    else
        newX1 = x1;
        newX2 = [x2 zeros(length(x1)-length(x2))];
        tempX = zeros(1,(length(x1)-length(x2)));
        for i = 1: length(x1)-length(x2)
            if i == 1
                tempX(i) = t(end) + 1;
            else
                tempX(i) = tempX(end)+1;
            end
        end
        newT = [t tempX];
    end
end