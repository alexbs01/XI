close all;
clear;

a = [0:0.5:2 1.5:-0.5:0];
t = 1:9;

figure(1);
plot(t, a);
hold on;
stem(t, a, 'r'); % Marca en la función con una línea roja vertical y rondeándolos los valores discretos de la función del eje x

xlabel('Tiempo');
ylabel('Amplitud');
title('Ejemplo 1');