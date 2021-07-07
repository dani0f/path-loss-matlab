function graphics(x,y1,y2,name)    
x=10*log10(x);
figure('Name',name);
plot(x,y2,'o');
grid on;
hold on;
plot(x,y1,'o');
title(name)
legend('Teorico','Empirico');
xlabel('10log10(d[m])');
ylabel('PL[dB]');
end