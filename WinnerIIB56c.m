function PLWB56c = WinnerIIB56c(dArray,hBs,dBp)
    PL = zeros(length(dArray),1);
    for i = 1:length(dArray)
        if dArray(i) <= dBp
            PL(i)=22.7*log10(dArray(i))+41.0+20*log10(5.8/5.0);
        else
            PL(i)=40*log10(dArray(i))+9.45-17.3*log10(hBs)-17.3*log10(0.6)+2.7*log10(5.8/5.0);
        end
        
    end
    PLWB56c=PL;
end




