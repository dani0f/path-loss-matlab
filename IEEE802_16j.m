function PLIEEE802_16j = IEEE802_16j(dArray,dBp)
    PL = zeros(length(dArray),1);
    for i = 1:length(dArray)
        if dArray(i) <= dBp 
            PL(i)= 20*log10((exp(0.002*dArray(i))*4*pi*dArray(i))/(0.05172));  
        else
            PL(i)= 20*log10((exp(0.002*dArray(i))*4*pi*dArray(i)*(dArray(i)/dBp))/(0.05172));
           
        end
        
    end
    PLIEEE802_16j=PL;
end




