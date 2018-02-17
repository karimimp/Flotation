function [E_coll] = collectionEfficiencyIntermediate()
% SUMMARY
%   Returns the collection efficiency of the bubble-particle encounter for
%   the intermediate flow. The following has been used for the collision,
%   attachment and detachment, respectively:
%    - Yoon-Luttrell
%    - Yoon-Luttrell
%    - Schulz
clc
clear
close all;
tic
prettyPlot();

dp = [10 32.5 55 77.5 100].*1e-6;
db = [0.05 0.06 0.08 00.09 0.1].*1e-2;
ub = [10 15 20 25 30].*1e-2;
rho_f = 998.2;
mu_f = 0.001;

Ec = YoonLuttrellCollision(dp(1),db(1),ub(1),rho_f,mu_f);

fprintf('dp = %f, db = %f, ub = %f, Ec = %f\n', dp(1),db(1),ub(1),Ec);
fprintf('Elapsed Time: %4.2f\n',toc);
end % end of collectionEfficiencyIntermediate