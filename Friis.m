function PLFriis = Friis(dArray)    
    PL = zeros(length(dArray),1);
    for i = 1:length(dArray)
        PL(i)=-20*log10((0.05172)/(4*pi*dArray(i))); 
    end
    PLFriis=PL;
end






