%%%%%%           SISTEMA DE TRANSMISION BANDA BASE         %%%%%%


clear;
close all;

%=================== Parametros ==================================
N=10;		 % Periodo de simbolo, longitud del pulso, siempre debe ser par
L=10;		 % Numero de bits a transmitir
tipopulso=3; 
       

%=================== Generacion del pulso =========================

if tipopulso == 1  %pulso rectangular
    n=0:N-1;
    pulso = ones(1, N); 
elseif tipopulso == 2 % Pulso mitad del rectágular
    n=0:N-1;
    pulso = [ones(1, N / 2), zeros(1, N / 2)];
    
elseif tipopulso == 3 % Pulso de Manchester
    n=0:N-1;
    pulso = [ones(1, N / 2), -ones(1, N / 2)];
elseif tipopulso == 4 % Pulso de rampa
    n=0:N-1;
    pulso = [linspace(0, 1, N)];
end


%=================== Calculo de la energia del pulso =============
%Escriba el codigo para calcular la energia

energia = sum(pulso.^2);

%=================== Generacion de la senal (modulacion) =========

bits=rand(1,L) < 0.5; %genera 0 y 1 a partir de un vector de numeros 
                      %aleatorios con distribucion uniforme

%Escriba un bucle que asocie un pulso con amplitud positiva a 0 y 
%un pulso con amplitud negativa a 1

senal = zeros(1, N * L);

k = 1;

for i = 1:length(bits)
    for j = 1:length(pulso)
        if bits(i) == 1
            senal(k) = 0;
        else
            senal(k) = pulso(j);
        end
        
        k = k + 1;
    end
end

%=================== Representacion grafica ===================
figure(1)
%subplot(121);
plot(n,pulso);
title('Pulso transmitido: p(n)');
axis padded;
grid;
 

%Escriba el codigo para representar la senal
figure(2)
%subplot(122);
plot((1:N*L), senal);
title('Senal transmitida: p(n)');
axis padded;
grid on;