function [Re] = Reb(ub,db,nu_f)
% SUMMARY
%   Returns the Reynolds number of bubbles
Re = (ub.*db)./nu_f;
end % end of Reb