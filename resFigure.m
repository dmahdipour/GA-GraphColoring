function [z] = resFigure(resOF,resData,resColor)
    clc
    [minResOFval , minResOFidx] = min(resOF);
    [maxResOFval , maxResOFidx] = max(resOF);

    fprintf('Our Best OF is: %i\n',minResOFval);
    disp('Our Best Coloring is: ');
    disp(resData(minResOFidx,:));

    fprintf('Our Worst OF is: %i\n',maxResOFval);
    disp('Our Worst Coloring is: ');
    disp(resData(maxResOFidx,:));

    fprintf('Our OF Average is: %.2f\n',mean(resOF));
    fprintf('Our OF Variance is: %.2f\n',var(resOF));
    disp('================================================');

    figure;
    plot(resOF);

    ylabel('Errors');
    xlabel('Runs');
    strBarTitle=sprintf('Result of Our 30 Time Run for 100 Gen \n\n \\color{blue}Best OF:  %.2f  \\color{red}Worst OF:  %.2f \n \\color{red}Mean:  %.2f \\color{blue}Variance:  %.2f \n\n One of the Best answer is:\n \\color{red} %s \n \\color{blue} This answer used color count is:\n \\color{red} %d \n',minResOFval,maxResOFval,mean(resOF),var(resOF),mat2str(resData(minResOFidx,:)),resColor(minResOFidx,:));
    title(strBarTitle);
z='OK';