function [t] = inductionTime(teta,dp)
% SUMMARY
%   Returns the induction time
teta_d = (teta/pi)*180; % convert teta to degree
beta = 0.6;
A = 75/teta_d;
t = A.*(dp.^beta);
end % end of inductionTime