function [] = collectionEfficiencyIntermediate()
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

[dp,db,ub,rho_f,rho_g,rho_p,nu_f,teta,g,sigma,epsilon] = setInputs('inputs.csv');
Re_b = Reb(ub,db,nu_f);
Ec = YoonLuttrellCollision(dp,db,ub,nu_f);
Ea = YoonLuttrellAttachment(dp,db,ub,nu_f,teta);
Es = SchulzeStability(dp,db,teta,sigma,g,rho_f,rho_g,rho_p,epsilon);
E_collection = Ec*Ea*Es;

fprintf('dp = %f, db = %f, ub = %f, Reb = %f, Ec = %e\n', dp,db,ub,Re_b,Ec);
fprintf('dp = %f, db = %f, ub = %f, Reb = %f, Ea = %e\n', dp,db,ub,Re_b,Ea);
fprintf('dp = %f, db = %f, ub = %f, Reb = %f, Es = %e\n', dp,db,ub,Re_b,Es);
fprintf('Collection Efficiency = %f\n',E_collection);

fprintf('\nElapsed Time: %6.4f s\n',toc);
end % end of collectionEfficiencyIntermediate