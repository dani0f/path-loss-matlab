function y=f47(constant,x) %funcion para 4.7m
    y = zeros(length(x),1);
    for i = 1:length(x)
        if x(i)<=171.69
            y(i)=47.71 + constant(1)*10*log10(x(i));
        else
            y(i)=47.71 + constant(1)*10*log10(171.69)+constant(2)*10*log10(x(i)/171.69);
        end
    end
end