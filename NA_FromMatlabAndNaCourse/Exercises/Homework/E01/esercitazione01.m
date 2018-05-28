disp('***********************************************')
disp('*****************esercizio_1_1*****************')
disp('***********************************************')
clear all
close all 
clc

x=[1:-0.1:0] % vettore x da 1 a 0 di passo -0.1 -> spaziatura negativa
disp('a)') 
x([1 4 3]) % memorizza in ans gli elementi 1 4 3 del vettore
disp('b)')
x([1:2:7 10])=zeros(1,5) % azzera gli elementi 1 3 5 7 10 del vettore
disp('c)') 
x([1 2 5])=[0.5*ones(1,2) -0.3] % primo e secondo elemento vettore == 0.5
                                % quinto == -0.3
disp('d)') 
y=x(end:-1:1) % vettore y che parte dalla fine di x (0) e procede a ritroso 
              % una casella alla volta => gira il vettore
disp('d_1)')
y=x(end:-2:1) % vettore y che parte dalla fine di x (0) e procede a ritroso 
              % due casella alla volta => gira il vettore ed è più piccolo
%
pause
%

disp('***********************************************')
disp('*****************esercizio_1_2*****************')
disp('***********************************************')
clear all 
close all
clc

A=[1 2 3 4; 5 6 7 8; 9 10 11 12]
disp('a)')
size(A)  % mostra la dimensione di A: num righe, num colonne
disp('b)')
B=A.*A  % moltiplica l'entrata i esima di A per l'entrata i esima
        % => ne fa il quadrato => B=A^2
disp('c)')
B=A*A  % prodotto tra matrici impossibile perché A ha un diverso numero di
       % righe e colonne
disp('d)')
B=A'*A  % B = risultato del prodotto matriciale di A trasposto per A
        % prodotto fattibile in quanto le colonne di A' sono pari al numero
        % di righe di A => B avrà numero di righe pari al numero di righe 
        % di A' e numero colonne pari a quello di A => è 4x4
disp('e)')
B=A*A'  % vedi sopra => B=3x3
disp('f)')
A(1:2,4)  % mostra gli elementi dalla riga 1 alla 2 e in colonna 4
A(:,3)  % mostra tutti gli elementi dellaterza colonna
A(:,[2 4])  % mostra tutti gli elementi delle colonne 2 e 4
A([2 3 3],:)  % per ogni colonna mostra gli elementi delle righe 2,3,3
disp('g)')
A(3,2)=A(1,1)  % eguaglia l'entrata in riga 3 colonna 2 con l'entrata (1,1)
disp('h)')
A(1:2,4)=zeros(2,1)  % azzera la sottomatrice di A dalla riga 1 alla 2 in 
                     % colonna 4 => azzera le entrate (1,4),(2,4)
A(2,:)=A(2,:)-A(2,1)/A(1,1)*A(1,:)  % Tutta la riga 2 di A = alla riga 2 
                                    % meno il rapporto tra l'entrata (2,1)
                                    % e l'entata (1,1) moltiplicato per la
                                    % riga 1
%
pause
%

disp('***********************************************')
disp('*****************esercizio_1_3*****************')
disp('***********************************************')
clear all
close all
clc

d=ones(10,1)  % vettore colonna di 1, di lunghezza 10
B1=diag(5*d)  % B1 = matrice di zeri con sulla diagonale 5*vettore d
              % => B1 ha sulla diagonale principale solo 5
d(end)=[]  % eliminiamo l'ultimo elemento da d perché la diagonale 
           % superiore e quella inferiore hanno un elemento in meno
B2=diag(-1*d, -1)  % B2 = matrice di zeri con -1 sulla diagonale inferiore
                   % ",-1" indica la diagonale inferiore
B3=diag(3*d, 1)  % Matrice di zeri con 3 sulla diagonale superiore
B=B1+B2+B3  % la matrice B richiesta è ottenuta come somma delle 3 matrici
disp(B) % mostra il risultato

% cambiamo le componenti (5,6) (8,6) (5,9) e (8,9) con dei 2:
B(:,[2 6])=2 
B([5 8],:)=2
% si poteva fare: B([5 8],[6 9]) = 2
disp(B)

%
pause
%

disp('***********************************************')
disp('*****************esercizio_1_4*****************')
disp('***********************************************')
clear all
close all
clc

A=[1:6; 5:10; 9:14; 15:20]
disp('a)')
B=A(:,[end:-1:1]) % B = A ma con le colonne invertite
disp('b)')
C=A(:,[2:2:end])  % C = matrice formata dalle sole colonne pari di A
disp('c)')        
D=A([2:2:end],:)  % D = matrice formata dalle sole righe pari di A
disp('d)')
E=A([1 4 3],[5 2])  % matrice formata dalle righe 1,4,3 
                    % e dalle colonne 5,2 di A
disp('e)')
v=diag(A([1:4],[1:4]))  % vettore formato dagli elementi diagonali A 
                        % a_(k,k) k = 1,...,4
                        
%
pause
%

disp('***********************************************')
disp('*****************esercizio_1_5*****************')
disp('***********************************************')
clear all
close all
clc

% funzione seno
x=linspace(-pi,pi);  % intervallo rappresentazione, di default 100 punti
y=sin(x);  % funzione nell'intervallo indicato
plot(x,y,'r'), grid on  % grafico funzione, in rosso con griglia
xlabel('x'), ylabel('y')  % etichette assi
title('Grafico funzione seno:')  % nome grafico
legend('sin(x)')  % legenda che spiega cos'è la traccia
         
% funzione esponenziale
x=linspace(-1,1);
figure  % non fa sovrascrivere il grafico precedente del seno
plot(x,exp(x), 'c'), grid on
xlabel('x'), ylabel('y')
title('Grafico funzione esponenziale')
legend('e^x')

% e^(-x^2)
% altro modo: dichiaro prima la funzione f, poi fo y=f(x)
f=@(x) exp(-x.^2)  % metto il punto perché voglio tutto il vettore x al
                   % quadrato
x=linspace(-5,5);
y=f(x);
figure
plot(x,y, 'g'), grid on, legend('e^(-x^2)')

% sin(x)/x
f=@(x) sin(x)./x  % ricorda il punto! x è un vettore di punti!
x=linspace(0+eps,4*pi,1000); % questa volta voglio più punti (1000)
                             % e voglio escludere l'estremo sinistro
                             % intervallo = (0,4pi]
y=f(x);
figure
plot(x,y, 'k'), grid on
title('Grafico funzione sin(x)/x')

% xsin(1/x)
f=@(x) x.*sin(1./x);
x=linspace(eps,2,10^5);  % più punti metto, meglio vedo come oscilla
y=f(x);
figure
plot(x,y), grid on

%
pause
%

disp('***********************************************')
disp('*****************esercizio_1_6*****************')
disp('***********************************************')

% Plot di una curva 
r=@(x)1+1/2*cos(4*x);
t=linspace(0,2*pi);
x=r(t).*cos(4.*t);
y=r(t).*sin(t);
plot(t,x,'g', t,y,'c')  % plot curva
legend('x','y')   % spiega qual è x e quale y

%
pause
%

disp('***********************************************')
disp('*****************esercizio_1_7*****************')
disp('***********************************************')
clear all
close all
clc

% Elica circolare
t=linspace(0,10*pi,10^3);

disp('i)')
a=1; b=-0.1;
x=a*cos(t); y=a*sin(t); z=b*t;
subplot(1,2,1)  % plotta su un riguadro 1x2; questa è l'immagine 1
plot3(x,y,z, 'c'), grid on
title('Elica circolare b=-0.1')

disp('ii)')
b=.1;
subplot(1,2,2)  % questa è l'immagine 2
plot3(a*cos(t),a*sin(t),b*t, 'r'), grid on
title('Elica circolare b=0.1')

%
pause
%