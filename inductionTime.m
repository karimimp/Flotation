function [t] = inductionTime(teta,dp)
% SUMMARY
%   Returns the induction time
beta = 0.6;
A = 75/rad2deg(teta);  % teta degree
t = A.*(0.01*dp.^beta); % dp in m
end % end of inductionTime