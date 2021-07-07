function y=f28(constant,x) %funcion para 2.8m
    y = zeros(length(x),1);
    for i = 1:length(x)
        if x(i)<=83.52
            y(i)=47.71 + constant(1)*10*log10(x(i));
        else
            y(i)=47.71 + constant(1)*10*log10(83.52)+constant(2)*10*log10(x(i)/83.52);
        end
    end
end