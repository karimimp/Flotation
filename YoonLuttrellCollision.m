function [Ec] = YoonLuttrellCollision()
% SUMMARY
%   Returns the efficiency of bubble-particle collision for the
%   intermediate flows.
clc
clear
close all;
tic



fprintf('Elapsed Time: %4.2f\n',toc);

end 

%% SUB-FUNCTIONS

function [xi,epsilon,sigma,rhoC] = setInputs()
fileId = fopen('inputs.csv');
data = textscan(fileId,'%s %f' ,'Delimiter',',');
fclose(fileId);
dmin = data{2}(1);dmax = data{2}(2);xi=linspace(dmin,dmax);
epsilon = data{2}(3);
sigma = data{2}(4);
rhoC = data{2}(5);
end % end of setInputs

function [] = prettyPlot()
set(0,'DefaultLineLineWidth', 2);
set(0,'DefaultaxesLineWidth', 2);
set(0,'DefaultaxesFontSize', 17);
set(0,'DefaultTextFontSize', 17);
set(0,'DefaultTextInterpreter','latex');
end % end of prettyPlot