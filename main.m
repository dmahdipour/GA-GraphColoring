clearvars
clc

% Inputs 
[L,myGraph,colorN,Gmax,Pc,Pm,ElitismOF,ElitismData,popNum] = inputsFunc();

maxRun=30;
resOF=zeros(maxRun,1);
resData=zeros(maxRun,L);

for runTime=1:maxRun
    % Inputs 
    [L,myGraph,colorN,Gmax,Pc,Pm,ElitismOF,ElitismData,popNum] = inputsFunc();
end