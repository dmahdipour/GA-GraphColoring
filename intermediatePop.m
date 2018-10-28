function [z] = intermediatePop(popNum,FPSpopT,PopT,L)
    k=1;
    PopInt=zeros(popNum,L);
    for i=1:popNum
        if(FPSpopT(i,1)>0)
            for j=1:FPSpopT(i,1)
                PopInt(k,:)=PopT(i,:);
                k=k+1;
            end
        end
    end
z=PopInt;