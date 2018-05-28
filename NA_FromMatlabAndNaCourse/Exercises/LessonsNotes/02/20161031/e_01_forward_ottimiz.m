% Metodo di sostituzione in avanti
% modo ottimizzato
% direttamente sui vettori (attraverso la libreria BLAS)

y(1)=b(1)/A(1,1);
for i=2:n
  y(i)=(b(i)-A(i,1:i-1)*y(1:i-1))/A(i,i); % prodotto scalare tra vettori
                                          % anziché somma all'interno del
                                          % ciclo
end