% Sostituzione all'indietro, fo

for i=n:-1:1
  x(i)=b(i);
  for j=i+1:n
    x(i)=x(i)-A(i,j)*x(j);
  end
  x(i)=x(i)/A(i,i);
end