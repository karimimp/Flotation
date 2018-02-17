function [Es] = SchulzeStability(dp,db,teta,sigma,g,rho_f,rho_g,rho_p,epsilon)
% SUMMARY
%   Return the stability efficiency of bubble-particle aggregate based on
%   Schulze formulation.

omega = (180 - teta/2)*(pi/180);
f_db = 4.*sigma./db - db.*rho_f.*g;
a = 29.6.*((epsilon.^(2/3))./((dp/2 + db/2).^(1/3)));
num = dp.^2.*((rho_f-rho_g).*g + rho_p.*a) + 1.5.*dp.*((sin(omega)).^2).*f_db;
dnum = abs(6*sigma.*sin(omega).*sin(omega + teta*pi/180));
Bo = num./dnum;

Es = 1 - exp(1-1./Bo);
end % end of SchulzeStability