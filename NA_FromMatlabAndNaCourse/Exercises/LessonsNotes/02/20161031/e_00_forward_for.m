% Sostituzione in avanti, con for
% costo n^2/2

for i=1:n
  y(i)=b(i);
  for j=1:i-1  % ciclo che viene saltato per 0      
    y(i)=y(i)-A(i,j)*y(j);
  end
  y(i)=y(i)/A(i,i);
end