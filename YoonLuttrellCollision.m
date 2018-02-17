function [Ec] = YoonLuttrellCollision()
% SUMMARY
%   Returns the efficiency of bubble-particle collision for the
%   intermediate flows.
clc
clear
close all;
tic
prettyPlot();

% [dp] = setInputs('inputs.xlsx')
% dp = xlsread('inputs.xlsx','Sheet 1','A2:A6');
% Re_b = Reb(ub,db,rho_f,mu_f);
% Ec = ((dp./db).^2).*(1.5 + 4/15.*(Re_b.^(0.72)));
fileId = fopen('inputs.csv');
data = textscan(fileId,'%s %f %f %f' ,'Delimiter',',')
data{2}(1)
fprintf('Elapsed Time: %4.2f\n',toc);

end 

%% SUB-FUNCTIONS

function [dp] = setInputs(fileName)
fileId = fopen(fileName);
% ,db,ub,rho_f,mu_f
data = textscan(fileId,'%s %f %f %f' ,'Delimiter',',');
fclose(fileId);
dp = data{2}(1:3);
db = data{2}(2);
ub = data{2}(3);
rho_f = data{2}(4);
mu_f = data{2}(5);
dp = xlsread(fileName,'Sheet 1','A2:A6');
end % end of setInputs

function [r] = Reb(ub,db,rho_f,mu_f)
r = (ub.*db.*rho_f)./mu_f;
end % end of Reb

function [] = prettyPlot()
set(0,'DefaultLineLineWidth', 2);
set(0,'DefaultaxesLineWidth', 2);
set(0,'DefaultaxesFontSize', 17);
set(0,'DefaultTextFontSize', 17);
set(0,'DefaultTextInterpreter','latex');
end % end of prettyPlot