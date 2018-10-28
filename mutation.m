function [z] = mutation(PopNext,L,colorN,popNum)
    for i=1:popNum        
        posN=ceil(L*rand());
        rndColor=ceil(colorN*rand());
        if(rndColor==PopNext(i,posN))
           rndColor=ceil(colorN*rand()); 
        end
        PopNext(i,posN)=rndColor; 
    end
z=PopNext;