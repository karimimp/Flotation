function [ out ] = turbulenceTerm(epsilon,db,nu_f,rho_p,rho_f,ui)
% SUMMARY
%   Returns the turbulence term in the general model of Pyke for the
%   flotation rate constant.

out = ( (0.33*(epsilon.^(4/9)).*(db.^(7/9)))./(nu_f.^(1/3)) ).*...
      (((rho_p-rho_f)/rho_f).^(2/3)).*...
      (1./ui);

end % end of turbulenceTerm