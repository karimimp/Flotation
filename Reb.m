function [Re] = Reb(ub,db,rho_f,mu_f)
% SUMMARY
%   Returns the Reynolds number of bubbles
Re = (ub.*db.*rho_f)./mu_f;
end % end of Reb