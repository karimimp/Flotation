function [Ea] = YoonLuttrellAttachment(dp,db,ub,nu_f,teta)
% SUMMARY
%   Returns the attachment efficiecny of bubble-particle attachment for
%   intermediate flow.

Re_b = Reb(ub,db,nu_f);
t_i = inductionTime(teta,dp);

num = -dp.*ub.*t_i.*(45 + 8.*Re_b.^0.72);
dnum = 15.*db.*(dp + db);
Ea = (sin(2.*atan(exp(num./dnum)))).^2;

end % end of YoonLuttrellAttachment