function [] = flotationRateConstant()
% SUMMARY
%   Returns the flotation rate constant based on Pyke general flotation
%   model. However, the followings have been applied for the sub-processes:
%   Ec: Yoon-Luttrell model
%   Ea: Yoon-Luttrell model for intermediate flow
%   Es: Schulze model
clc
clear
close all;
tic
[dp,db,ub,rho_f,rho_g,rho_p,nu_f,teta,g,sigma,epsilon,Gfr,Vr,ui] =...
                                                  setInputs('inputs.csv');
Re_b = Reb(ub,db,nu_f);
Ec = YoonLuttrellCollision(dp,db,ub,nu_f);
Ea = YoonLuttrellAttachment(dp,db,ub,nu_f,teta);
Es = SchulzeStability(dp,db,teta,sigma,g,rho_f,rho_g,rho_p,epsilon);
E_collection = Ec*Ea*Es;
mech_ = mechanicalTerm(Gfr,db,Vr);
turb_ = turbulenceTerm(epsilon,db,nu_f,rho_p,rho_f,ui);
k = mech_.*turb_.*E_collection;

fprintf('\t\t Operating Parameters:\t\t\n');
fprintf('dp = %f, rho_p = %f, db = %f,\nub = %f, Reb = %f, epsilon = %f\n',...
        dp,rho_p,db,ub,Re_b,epsilon);

fprintf('\n\t\t Sytem Responses \t\t\n')
fprintf('Ec = %e, Ea = %e, Es = %e \n', Ec, Ea, Es);
fprintf('Collection Efficiency = %e\n',E_collection);
fprintf('Mechanical term = %f\n',mech_);
fprintf('Turbulence term = %f\n',turb_);
fprintf('Flotation rate constant = %f\n',k);

fprintf('\nElapsed Time: %6.4f s\n',toc);
end % end of flotationRateConstant