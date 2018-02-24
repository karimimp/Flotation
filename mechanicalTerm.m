function [ output ] = mechanicalTerm(Gfr,db,Vr)
% SUMMARY
%   Returns the mechanical term in general model of Pyke for the flotation
%   rate constant.

output = (7.5/pi).*(Gfr./(db.*Vr));
end % end of mechanicalTerm