function [z] = fpsFunc(popNum,FF)    
    FPS=zeros(popNum,1);
    FPStemp=zeros(popNum,1);
    
    for i=1:popNum
        FPStemp(i,1)=FF(i,1)/mean(FF)+1;
		% Decimal part of FPS Template
		decFPStemp = FPStemp(i,1)-floor(FPStemp(i,1));
        if(rand() < decFPStemp)
            FPS(i,1) = floor(FPStemp(i,1));
        else
            FPS(i,1) = floor(FPStemp(i,1))+1;
        end
    end
	
	% adjust popNum    
    if (sum(FPS)>popNum)
        dif=sum(FPS)-popNum;
        while dif>0
            rnd=ceil(popNum*rand());
            if(FPS(rnd,1)>0)
                FPS(rnd,1)=FPS(rnd,1)-1;
            end
            dif=sum(FPS)-popNum;
        end
    else
        dif=popNum-sum(FPS);
        while dif>0
            rnd=ceil(popNum*rand());
            FPS(rnd,1)=FPS(rnd,1)+1; 
            dif=sum(FPS)-popNum;
        end
    end
	
z=FPS;