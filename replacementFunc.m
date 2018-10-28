function [z1,z2,z3] = replacementFunc(popNum,PopT,PopNext,OFpopT,OFpopNext,ElitismData,ElitismOF)    
    [valMinOFpopNext, idxMinOFpopNext] = min(OFpopNext);
    for i=1:popNum
        if (i==idxMinOFpopNext)
            % Use Eliticm
            if (OFpopNext(i) < OFpopT(i))
                PopT(i,:) = PopNext(i,:);
            end
        else
            if (rand() < 0.8)
                PopT(i,:)=PopNext(i,:);
            end
        end
    end
    
    % Store Eliticm
    if (valMinOFpopNext < ElitismOF)
        ElitismOF = valMinOFpopNext;
        ElitismData(1,:) = PopNext(idxMinOFpopNext,:);
    end
            
z1 = PopT;
z2 = ElitismData;
z3 = ElitismOF;