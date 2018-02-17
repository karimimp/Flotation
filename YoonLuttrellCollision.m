function [Ec] = YoonLuttrellCollision(dp,db,ub,rho_f,mu_f)
% SUMMARY
%   Returns the efficiency of bubble-particle collision for the
%   intermediate flows.
Re_b = Reb(ub,db,rho_f,mu_f);
Ec = ((dp./db).^2).*(1.5 + 4/15.*(Re_b.^(0.72)));
end % end of YoonLuttrellCollision

