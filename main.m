load('mediciones.mat');
%friis
friisPL28=Friis(d28);
friisPL47=Friis(d47);
%winner
winnerPL28=WinnerIIB56c(d28,1.8,83.52);
winnerPL47=WinnerIIB56c(d47,3.7,171.69);
%IEEE
IEEEPL28=IEEE802_16j(d28,83.52);
IEEEPL47=IEEE802_16j(d47,171.69);
%two
constant28 = lsqcurvefit(@f28,[0,0],d28,pl28);
n1_28=constant28(1)
n2_28=constant28(2)
twoPL28=f28(constant28,d28);
constant47 = lsqcurvefit(@f47,[0,0],d47,pl47);
n1_47=constant47(1)
n2_47=constant47(2)
twoPL47=f47(constant47,d47);

graphics(d28,pl28,friisPL28,'Friis 2.8 metros');
graphics(d47,pl47,friisPL47,'Friis 4.7 metros');
graphics(d28,pl28,IEEEPL28,'IEEE802.16j 2.8 metros');
graphics(d47,pl47,IEEEPL47,'IEEE802.16j 4.7 metros');
graphics(d28,pl28,winnerPL28,'Winner II B5c 2.8 metros');
graphics(d47,pl47,winnerPL47,'Winner II B5c 4.7 metros');
graphics(d28,pl28,twoPL28,'2 Pendientes 2.8 metros');
graphics(d47,pl47,twoPL47,'2 Pendientes 4.7 metros');

display('errors friis')
errors(pl28,friisPL28);
errors(pl47,friisPL47);
display('errors IEEE')
errors(pl28,IEEEPL28);
errors(pl47,IEEEPL47);
display('errors winner')
errors(pl28,winnerPL28);
errors(pl47,winnerPL47);
display('errors two')
errors(pl28,twoPL28);
errors(pl47,twoPL47);

