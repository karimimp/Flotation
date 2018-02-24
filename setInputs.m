function [dp,db,ub,rho_f,rho_g,rho_p,nu_f,teta,g,sigma,epsilon,Gfr,Vr,ui] = setInputs(inputs)
% SUMMARY
%   Return the required variables for the computations of collection
%   efficiency for intermediate flows. The return variables are:
%   dp: particle diameter [cm]
%   db: bubble diameter [cm]
%   ub: bubble velocity [cm/s]
%   rho_f: fluid density [g/cm3]
%   rho_g: gas density [g/cm3]
%   rho_p: particle density [g/cm3]
%   nu_f: fluid kinematic viscosity [cm2/s]
%   teta: contact angle [Radian]
%   g: gravity acceleration [cm/s2]
%   sigma: surface tension [dyne/cm]
%   epsilon: turbulent dissipation rate [m2/s3]
%   Gfr: gas flow rate [cm3/min]
%   Vr: cell volume [cm3]
%   ui: turbulent fluid velocity [cm/s]

fileID = fopen(inputs);
data = textscan(fileID,'%s %f' ,'Delimiter',',');
fclose(fileID);

dp = data{2}(1);
db = data{2}(2);
ub = data{2}(3);
rho_f = data{2}(4);
rho_g = data{2}(5);
rho_p = data{2}(6);
nu_f = data{2}(7);
teta = data{2}(8);
g = data{2}(9);
sigma = data{2}(10);
epsilon = data{2}(11);
Gfr = data{2}(12);
Vr = data{2}(13);
ui = data{2}(14);
end % end of setInputs