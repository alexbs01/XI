close all;
clear;

vini = 1;
vfin = 10;
tiposen = 4;

if tiposen == 1
    x = vini:vfin;
    y = x;
elseif tiposen == 2
    x = vini:vfin;
    y = x.^2;
elseif tiposen == 3
    x = vini:vfin;
    y = exp(x);
elseif tiposen == 4
    x = vini:vfin;
    y = exp(x(end:-1:1));
end;

plot(x, y); xlabel('Eje x'); ylabel('Eje y');
