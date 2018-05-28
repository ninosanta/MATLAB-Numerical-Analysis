function x = e11mio_sort(v)
% Riceve il vettore di dati e ne ritorna uno ordinato
%   v è il vettore con i dati disordinati
%   x sarà il vettore ritornato con i dati ordinati
%   il v passato non viene modificato
%   Opera mediante insertion sort

for i=2:(length(v))
  j=i-1;
  tmp=v(i);
  while j>0 && tmp<v(j)
    v(j+1)=v(j);
    j=j-1;
  end
  v(j+1)=tmp;
end
  x=v;
end