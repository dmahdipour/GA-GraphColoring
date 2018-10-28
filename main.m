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
    
    % Generate Pop
    PopT=ceil(colorN*rand(popNum,L));
    PopFirst=PopT;

    flgEnd=0;
    counterG=1;
    while(counterG<Gmax)
        % OF and FF PopT
        [OFpopT , FFpopT , ColorUses] = of_ff(myGraph,PopT,popNum,L,colorN);
        %FPSpopT
        FPSpopT = fpsFunc(popNum,FFpopT);

        counterG = counterG+1;    
    end
end