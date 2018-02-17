function [t] = inductionTime(teta,dp)
% SUMMARY
%   Returns the induction time
beta = 0.6;
A = 75/teta;
t = A.*(dp.^beta);
end % end of inductionTime