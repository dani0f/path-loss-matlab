function errors(y1,y2)   
%y1 teorico y2 empirico
errorMean=mean(abs(y1-y2))
errorMedian=median(abs(y1-y2))
errorRMS=sqrt(mean((y1-y2).^2))  
end

