% Definizione di un vettore:
[1 -1 4] % memorizza in ans
whos % ans sarà 1x3 e occuperà 3*8=24B

% vettori:
v1=[1 -1 4];
v2=[-2 0 3];
v1+v2 
v1-v2
v1*v2 % dara' errore per via dei numeri di righe e colonne:
      % il numero di righe deve essere pari al numero delle colonne
v2' % v2 trasposto
v1*v2' % prodotto scalare: vettore riga per vettore colonna
       % mi aspetto uno scalare
% oppure
dot(v1,v2) % sempre prodotto scalare

% vettore colonna per vettore riga
v1'*v2

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

v1=[1 0 4 5 -3];
v2=[-2 0 3];
% non li posso sommare ne' fare altre operazioni

v1=[1,2,3] % sempre vettore riga
v1=[1;2;3] % vettore colonna

v1=[1,2,3];
v2=[-2 0 3];
v3=2*v1 % operazione scalare
v4=2*v1-6*v2

% OSS:
%   si usano solamente parentesi tonde!!!!!!!!1!

% vettori equispaziati:
v = [1:1:10] % 1 2 ... 10
v = [1:1:200]' % vettore colonna
v = [1:2:200] % qui il passo è 2

v=linspace(1,10,100) % prima componente, ultima e numero elementi vettore
v=linspace(1,10,4)' % colonna
                    % estremo sx intervallo, dx e né sottintervalli uguali

% inizializzazione vettore/preallocazione spazio memoria
z=zeros(1,5) % vettore riga di 5 elementi nulli
z=zeros(5,1) % 5 righe e una colonna di elementi nulli
z=ones(5,1) % vettore unitario