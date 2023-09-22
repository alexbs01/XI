close all;
clear;

vini = 1;
vfin = 10;

x = vini:vfin;
y1 = x;
y2 = x.^2;
y3 = exp(x);
y4 = exp(x(end:-1:1));

figure; % Crea una ventana para crear dibujar funciones

subplot(221); % Divide figure en una matriz de 2x2 e indica que en la posición 1 hará un plot
plot(x, y1); xlabel('Eje x'); ylabel('Eje y');

subplot(222);
plot(x, y2); xlabel('Eje x'); ylabel('Eje y');

subplot(223);
plot(x, y3); xlabel('Eje x'); ylabel('Eje y');

subplot(224);
plot(x, y4); xlabel('Eje x'); ylabel('Eje y');
