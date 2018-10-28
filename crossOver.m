function [z] = crossOver(PopInt,L,popNum)
    PopNext=zeros(popNum,L);
    for i=1:2:popNum
        Npt=ceil(L*rand());
        for j=1:L
            if(j<=Npt)
                PopNext(i,j)=PopInt(i,j);
                PopNext(i+1,j)=PopInt(i+1,j);
            else
                PopNext(i,j)=PopInt(i+1,j);
                PopNext(i+1,j)=PopInt(i,j);
            end
        end
    end
z=PopNext;