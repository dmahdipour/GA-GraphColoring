function [z1,z2,z3] = of_ff(myGraph,Pop,popNum,L,colorN)
    OF=zeros(popNum,1);
    FF=zeros(popNum,1);
    Alf=0.95;
    Bet=0.05;
    colorCount=L*ones(popNum,1);
    
    for i=1:popNum
        for j=1:L-1
           for k=j+1:L
               if (myGraph(j,k)==1 && Pop(i,j)== Pop(i,k))
                   OF(i,1)=OF(i,1)+1;
               end
           end
        end 
        
        % Color Confilict Count
        for j=1:L-1
           for k=j+1:L
               if(Pop(i,j)==Pop(i,k))
                   colorCount(i,1)=colorCount(i,1)-1;
                   break;
               end
           end
        end 
        % Final OF
        OF(i,1)=(Alf*(OF(i,1)/(L*(L-1)/2)))+(Bet*((colorCount(i,1)-1)/(colorN-1)));

		FF(i,1)= 1/(OF(i,1)+1);
    end
    
z1=OF;
z2=FF;
z3=colorCount;